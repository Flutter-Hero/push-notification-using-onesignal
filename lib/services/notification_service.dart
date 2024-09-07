import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:push_notification_demo/keys/api_keys.dart';

class NotificationService {
  String url = "https://api.onesignal.com/notifications";

  sendNotification(String title, String description) async {
    try {
      var response = await http.post(Uri.parse(url),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Basic ${ApiKeys.onesignalApiKey}"
          },
          body: jsonEncode({
            "app_id": ApiKeys.appId,
            "contents": {"en": description},
            "included_segments": ["Total Subscriptions"],
            "headings": {
              "en": title,
            },
            "data": {

              'page': "random"

            }
          }));

      if (response.statusCode == 200) {
        print("Notification send successful and message is ${response.body}");
      } else {
        print(
            "Notification send failes with status code ${response.statusCode} and message is ${response.body}");
      }
    } on Exception catch (e) {
      print("Error occuered: $e");
    }
  }
}
