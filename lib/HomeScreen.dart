import 'package:flutter/material.dart';
import 'package:mtrench/Responsive/Mobile/MobileLayout.dart';
import 'package:mtrench/Responsive/Web/WebLayout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget webscreen = WebLayout();
  Widget mobilescreen = MobileLayout();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth > 600? webscreen:mobilescreen;
      },
    );
  }
}
