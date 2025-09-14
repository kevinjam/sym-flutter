import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/result.dart';
import '../../domain/entities/support_message.dart';
import '../../domain/repositories/support_repository.dart';
import '../../data/providers/support_providers.dart';

// Support State
class SupportState {
  final bool isLoading;
  final List<SupportCategory> categories;
  final List<SupportMessage> messages;
  final String? error;
  final bool messageSent;

  const SupportState({
    this.isLoading = false,
    this.categories = const [],
    this.messages = const [],
    this.error,
    this.messageSent = false,
  });

  SupportState copyWith({
    bool? isLoading,
    List<SupportCategory>? categories,
    List<SupportMessage>? messages,
    String? error,
    bool? messageSent,
  }) {
    return SupportState(
      isLoading: isLoading ?? this.isLoading,
      categories: categories ?? this.categories,
      messages: messages ?? this.messages,
      error: error,
      messageSent: messageSent ?? this.messageSent,
    );
  }
}

// Support Notifier
class SupportNotifier extends StateNotifier<SupportState> {
  final SupportRepository _supportRepository;

  SupportNotifier(this._supportRepository) : super(const SupportState()) {
    loadCategories();
  }

  Future<void> loadCategories() async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _supportRepository.getSupportCategories();
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (categories) => state = state.copyWith(
        isLoading: false,
        categories: categories,
        error: null,
      ),
    );
  }

  Future<void> sendSupportMessage({
    required String category,
    required String subject,
    required String message,
  }) async {
    state = state.copyWith(isLoading: true, error: null, messageSent: false);
    
    final request = CreateSupportMessageRequest(
      category: category,
      subject: subject,
      message: message,
    );
    
    final result = await _supportRepository.createSupportMessage(request);
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
        messageSent: false,
      ),
      (response) => state = state.copyWith(
        isLoading: false,
        error: null,
        messageSent: true,
      ),
    );
  }

  Future<void> loadUserMessages() async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _supportRepository.getUserSupportMessages();
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (messages) => state = state.copyWith(
        isLoading: false,
        messages: messages,
        error: null,
      ),
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void clearMessageSent() {
    state = state.copyWith(messageSent: false);
  }
}

// Providers
final supportProvider = StateNotifierProvider<SupportNotifier, SupportState>((ref) {
  final repository = ref.watch(supportRepositoryProvider);
  return SupportNotifier(repository);
});
