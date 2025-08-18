import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/notification.dart';
import '../../domain/repositories/notification_repository.dart';
import '../../data/providers/notification_providers.dart';

// Notification state
class NotificationState {
  final bool isLoading;
  final List<AppNotification> notifications;
  final int unreadCount;
  final String? error;
  final bool hasMore;
  final int currentPage;

  const NotificationState({
    this.isLoading = false,
    this.notifications = const [],
    this.unreadCount = 0,
    this.error,
    this.hasMore = true,
    this.currentPage = 1,
  });

  NotificationState copyWith({
    bool? isLoading,
    List<AppNotification>? notifications,
    int? unreadCount,
    String? error,
    bool? hasMore,
    int? currentPage,
  }) {
    return NotificationState(
      isLoading: isLoading ?? this.isLoading,
      notifications: notifications ?? this.notifications,
      unreadCount: unreadCount ?? this.unreadCount,
      error: error,
      hasMore: hasMore ?? this.hasMore,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}

// Notification notifier
class NotificationNotifier extends StateNotifier<NotificationState> {
  final NotificationRepository _repository;

  NotificationNotifier(this._repository) : super(const NotificationState()) {
    loadNotifications();
    loadUnreadCount();
  }

  Future<void> loadNotifications({
    bool refresh = false,
    bool unreadOnly = false,
  }) async {
    if (refresh) {
      state = state.copyWith(
        isLoading: true,
        error: null,
        currentPage: 1,
        hasMore: true,
      );
    } else if (state.isLoading || !state.hasMore) {
      return;
    } else {
      state = state.copyWith(isLoading: true, error: null);
    }

    final page = refresh ? 1 : state.currentPage;
    final result = await _repository.getNotifications(
      page: page,
      limit: 20,
      unreadOnly: unreadOnly,
    );

    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (response) {
        final newNotifications = refresh 
            ? response.notifications
            : [...state.notifications, ...response.notifications];
        
        state = state.copyWith(
          isLoading: false,
          notifications: newNotifications,
          hasMore: response.hasMore,
          currentPage: page + 1,
          error: null,
        );
      },
    );
  }

  Future<void> loadUnreadCount() async {
    final result = await _repository.getUnreadCount();
    result.fold(
      (failure) => {}, // Silently fail for unread count
      (count) => state = state.copyWith(unreadCount: count),
    );
  }

  Future<void> markAsRead(String notificationId) async {
    final result = await _repository.markAsRead(notificationId);
    
    result.fold(
      (failure) => state = state.copyWith(error: failure.toString()),
      (_) {
        // Update local state
        final updatedNotifications = state.notifications.map((notification) {
          if (notification.id == notificationId && !notification.isRead) {
            return notification.copyWith(
              isRead: true,
              readAt: DateTime.now(),
            );
          }
          return notification;
        }).toList();

        final newUnreadCount = state.unreadCount > 0 ? state.unreadCount - 1 : 0;

        state = state.copyWith(
          notifications: updatedNotifications,
          unreadCount: newUnreadCount,
          error: null,
        );
      },
    );
  }

  Future<void> markAllAsRead() async {
    final result = await _repository.markAllAsRead();
    
    result.fold(
      (failure) => state = state.copyWith(error: failure.toString()),
      (_) {
        // Update local state
        final updatedNotifications = state.notifications.map((notification) {
          if (!notification.isRead) {
            return notification.copyWith(
              isRead: true,
              readAt: DateTime.now(),
            );
          }
          return notification;
        }).toList();

        state = state.copyWith(
          notifications: updatedNotifications,
          unreadCount: 0,
          error: null,
        );
      },
    );
  }

  Future<void> deleteNotification(String notificationId) async {
    final result = await _repository.deleteNotification(notificationId);
    
    result.fold(
      (failure) => state = state.copyWith(error: failure.toString()),
      (_) {
        // Update local state
        final notification = state.notifications.firstWhere(
          (n) => n.id == notificationId,
          orElse: () => throw Exception('Notification not found'),
        );

        final updatedNotifications = state.notifications
            .where((n) => n.id != notificationId)
            .toList();

        final newUnreadCount = notification.isRead 
            ? state.unreadCount 
            : (state.unreadCount > 0 ? state.unreadCount - 1 : 0);

        state = state.copyWith(
          notifications: updatedNotifications,
          unreadCount: newUnreadCount,
          error: null,
        );
      },
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void addNotification(AppNotification notification) {
    final updatedNotifications = [notification, ...state.notifications];
    final newUnreadCount = notification.isRead 
        ? state.unreadCount 
        : state.unreadCount + 1;

    state = state.copyWith(
      notifications: updatedNotifications,
      unreadCount: newUnreadCount,
    );
  }
}

// Provider
final notificationProvider = StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  final repository = ref.read(notificationRepositoryProvider);
  return NotificationNotifier(repository);
});

// Unread count provider
final unreadCountProvider = Provider<int>((ref) {
  final notificationState = ref.watch(notificationProvider);
  return notificationState.unreadCount;
});
