import 'package:flutter/material.dart';
class Signout extends StatelessWidget {
  const Signout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Signout"),
        ),
      ),
    );
  }
}