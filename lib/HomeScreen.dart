import 'package:flutter/material.dart';
import 'package:mtrench/Responsive/Mobile/Mobile.dart';
import 'package:mtrench/Responsive/Web/WebScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget webscreen = WebScreen();
  Widget mobilescreen = Mobile();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth > 600? webscreen:mobilescreen;
      },
    );
  }
}
