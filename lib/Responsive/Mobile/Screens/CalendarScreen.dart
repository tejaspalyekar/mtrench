import 'package:flutter/material.dart';
class CalScreen extends StatelessWidget {
  const CalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Calender Screen"),
        ),
      ),
    );
  }
}