import 'package:flutter/material.dart';



class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification Screen"),
      ),

      body: Center(
        child: Text("Hey you are in notification page"),

      ),
    );
  }
}