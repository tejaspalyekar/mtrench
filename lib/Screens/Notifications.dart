import 'package:flutter/material.dart';
class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 1.2,
        centerTitle: true,
        leadingWidth: 100,
        title: const Text("Notifications",style: TextStyle(color: Colors.black)),
        leading: TextButton.icon(
          
          onPressed: () =>  Navigator.pop(context), 
         label: const Text("Back",style: TextStyle(color: Colors.black)),
         icon: const Icon(Icons.arrow_back_rounded,color: Color.fromARGB(255, 0, 4, 255),),
          ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}