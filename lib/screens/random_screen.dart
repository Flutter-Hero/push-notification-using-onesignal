import 'package:flutter/material.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Screen"),
      ),
      body: Center(
        child: Text("Hey you are in random page"),
      ),
    );
  }
}
