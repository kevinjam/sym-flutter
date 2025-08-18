import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/notification_provider.dart';
import '../../../domain/entities/notification.dart';

class NotificationsPage extends ConsumerStatefulWidget {
  const NotificationsPage({super.key});

  @override
  ConsumerState<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends ConsumerState<NotificationsPage> {
  final ScrollController _scrollController = ScrollController();
  bool _showUnreadOnly = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= 
        _scrollController.position.maxScrollExtent * 0.8) {
      ref.read(notificationProvider.notifier).loadNotifications(
        unreadOnly: _showUnreadOnly,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final notificationState = ref.watch(notificationProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          // Filter toggle
          IconButton(
            icon: Icon(_showUnreadOnly ? Icons.filter_alt : Icons.filter_alt_outlined),
            onPressed: () {
              setState(() {
                _showUnreadOnly = !_showUnreadOnly;
              });
              ref.read(notificationProvider.notifier).loadNotifications(
                refresh: true,
                unreadOnly: _showUnreadOnly,
              );
            },
            tooltip: _showUnreadOnly ? 'Show all' : 'Show unread only',
          ),
          // Mark all as read
          if (notificationState.unreadCount > 0)
            IconButton(
              icon: const Icon(Icons.done_all),
              onPressed: () => _showMarkAllAsReadDialog(),
              tooltip: 'Mark all as read',
            ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(notificationProvider.notifier).loadNotifications(
          refresh: true,
          unreadOnly: _showUnreadOnly,
        ),
        child: _buildBody(notificationState),
      ),
    );
  }

  Widget _buildBody(NotificationState state) {
    if (state.isLoading && state.notifications.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.notifications.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _showUnreadOnly ? Icons.mark_email_read : Icons.notifications_none,
              size: 64,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            Text(
              _showUnreadOnly ? 'No unread notifications' : 'No notifications yet',
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              _showUnreadOnly 
                  ? 'All caught up!' 
                  : 'Notifications will appear here',
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Unread count banner
        if (state.unreadCount > 0 && !_showUnreadOnly)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Text(
              '${state.unreadCount} unread notification${state.unreadCount == 1 ? '' : 's'}',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        
        // Notifications list
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            itemCount: state.notifications.length + (state.hasMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == state.notifications.length) {
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                );
              }

              final notification = state.notifications[index];
              return _buildNotificationTile(notification);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildNotificationTile(AppNotification notification) {
    final notificationType = NotificationType.fromString(notification.type);
    final priority = NotificationPriority.fromString(notification.priority);

    return Dismissible(
      key: Key(notification.id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 16),
        child: Icon(Icons.delete, color: Colors.grey[800]),
      ),
      onDismissed: (direction) {
        ref.read(notificationProvider.notifier).deleteNotification(notification.id);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Notification deleted')),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        elevation: notification.isRead ? 0 : 2,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: _getNotificationColor(notificationType, priority),
            child: Icon(
              _getNotificationIcon(notificationType),
              color: Colors.grey[800],
              size: 20,
            ),
          ),
          title: Text(
            notification.title,
            style: TextStyle(
              fontWeight: notification.isRead ? FontWeight.normal : FontWeight.bold,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notification.message,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    _formatDateTime(notification.createdAt),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  if (priority != NotificationPriority.normal) ...[
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: _getPriorityColor(priority),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        priority.value.toUpperCase(),
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
          trailing: notification.isRead 
              ? null 
              : Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                ),
          onTap: () => _onNotificationTap(notification),
        ),
      ),
    );
  }

  void _onNotificationTap(AppNotification notification) {
    if (!notification.isRead) {
      ref.read(notificationProvider.notifier).markAsRead(notification.id);
    }

    // Handle navigation based on notification type
    _handleNotificationNavigation(notification);
  }

  void _handleNotificationNavigation(AppNotification notification) {
    final type = NotificationType.fromString(notification.type);
    
    switch (type) {
      case NotificationType.medicationReminder:
      case NotificationType.medicationPrescribed:
      case NotificationType.medicationStopped:
        // Navigate to medications page
        Navigator.of(context).pushNamed('/medications');
        break;
      case NotificationType.symptomAlert:
      case NotificationType.symptomReported:
      case NotificationType.symptomResolved:
        // Navigate to symptoms page
        Navigator.of(context).pushNamed('/symptoms');
        break;
      case NotificationType.connectionRequest:
      case NotificationType.connectionResponse:
        // Navigate to doctors/connections page
        Navigator.of(context).pushNamed('/doctors');
        break;
      default:
        // Show notification details dialog
        _showNotificationDetails(notification);
        break;
    }
  }

  void _showNotificationDetails(AppNotification notification) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(notification.title),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(notification.message),
              const SizedBox(height: 16),
              Text(
                'Received: ${_formatDateTime(notification.createdAt)}',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
              ),
              if (notification.data.isNotEmpty) ...[
                const SizedBox(height: 16),
                const Text(
                  'Additional Information:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ...notification.data.entries.map((entry) => Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text('${entry.key}: ${entry.value}'),
                )),
              ],
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showMarkAllAsReadDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Mark All as Read'),
        content: const Text('Are you sure you want to mark all notifications as read?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
              ref.read(notificationProvider.notifier).markAllAsRead();
            },
            child: const Text('Mark All as Read'),
          ),
        ],
      ),
    );
  }

  Color _getNotificationColor(NotificationType type, NotificationPriority priority) {
    if (priority == NotificationPriority.urgent) return Colors.red;
    if (priority == NotificationPriority.high) return Colors.orange;

    switch (type) {
      case NotificationType.medicationReminder:
        return Colors.blue;
      case NotificationType.medicationPrescribed:
        return Colors.green;
      case NotificationType.medicationStopped:
        return Colors.grey;
      case NotificationType.symptomAlert:
        return Colors.red;
      case NotificationType.symptomReported:
        return Colors.orange;
      case NotificationType.symptomResolved:
        return Colors.green;
      case NotificationType.connectionRequest:
        return Colors.purple;
      case NotificationType.connectionResponse:
        return Colors.indigo;
      case NotificationType.doctorMessage:
        return Colors.teal;
      case NotificationType.adherenceAlert:
        return Colors.amber;
      default:
        return Colors.grey;
    }
  }

  IconData _getNotificationIcon(NotificationType type) {
    switch (type) {
      case NotificationType.medicationReminder:
        return Icons.medication;
      case NotificationType.medicationPrescribed:
        return Icons.add_box;
      case NotificationType.medicationStopped:
        return Icons.stop_circle;
      case NotificationType.symptomAlert:
        return Icons.warning;
      case NotificationType.symptomReported:
        return Icons.health_and_safety;
      case NotificationType.symptomResolved:
        return Icons.check_circle;
      case NotificationType.connectionRequest:
        return Icons.person_add;
      case NotificationType.connectionResponse:
        return Icons.how_to_reg;
      case NotificationType.doctorMessage:
        return Icons.message;
      case NotificationType.adherenceAlert:
        return Icons.schedule;
      default:
        return Icons.notifications;
    }
  }

  Color _getPriorityColor(NotificationPriority priority) {
    switch (priority) {
      case NotificationPriority.urgent:
        return Colors.red;
      case NotificationPriority.high:
        return Colors.orange;
      case NotificationPriority.normal:
        return Colors.blue;
      case NotificationPriority.low:
        return Colors.grey;
    }
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    
    if (difference.inDays > 7) {
      return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    } else if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }
}
