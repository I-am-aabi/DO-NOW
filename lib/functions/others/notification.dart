import 'package:awesome_notifications/awesome_notifications.dart';

notify(String discription,String location) {
  AwesomeNotifications().createNotification(
    
      content: NotificationContent(
          id: 1,
          channelKey: 'key1',
          title:  discription,
          body: location,
          payload: {"abid": "is here"},
          autoDismissible: false),
      actionButtons: [
        NotificationActionButton(
          key: "completed",
          label: "completed",
        ),
        NotificationActionButton(
          key: "pending",
          label: "pending",
        )
      ]);
      
}
