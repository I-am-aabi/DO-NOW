import 'package:awesome_notifications/awesome_notifications.dart';

notify() {
  AwesomeNotifications().createNotification(
    
      content: NotificationContent(
          id: 1,
          channelKey: 'key1',
          title: 'title here',
          body: 'body here',
          payload: {"abid": "is here"},
          autoDismissible: false),
      actionButtons: [
        NotificationActionButton(
          key: "open",
          label: "completed",
        ),
        NotificationActionButton(
          key: "delete",
          label: "pending",
        )
      ]);
}
