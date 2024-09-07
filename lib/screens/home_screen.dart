import 'package:flutter/material.dart';
import 'package:push_notification_demo/services/notification_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Onesignal Demo",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _titleController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Enter your notification title",
                  label: Text("Title"),
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _descriptionController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Enter your notification description",
                  label: Text("Description"),
                  border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                await NotificationService().sendNotification(
                    _titleController.text, _descriptionController.text);
              },
              child: Text("Send Notification"))
        ],
      ),
    );
  }
}
