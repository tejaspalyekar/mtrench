import 'package:flutter/material.dart';
import 'package:mtrench/Responsive/Mobile/Screens/ProjectManagement.dart';
import 'package:mtrench/widgets/drawer.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileState();
}

class _MobileState extends State<MobileLayout> {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(
        value: "Admin",
        child: Text(
          "Admin",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        )),
    const DropdownMenuItem(
      value: "my profile",
      child: Text(
        "my profile",
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
    ),
    const DropdownMenuItem(
      value: "change password",
      child: Text(
        "change password",
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
    ),
    const DropdownMenuItem(
      value: "add account",
      child: Text(
        "add account",
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
    ),
  ];
  String profilevalue = "Admin";
  String data = "";
  Widget currScreen = ProjectManagement();
  void changeCurrentScreen(Widget screen) {
    setState(() {
      currScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                "assets/notification.png",
                width: 40,
                height: 40,
              ),
            )
          ],
          title: Center(
            child: Image.asset(
              width: 120,
              height: 100,
              'assets/des.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          elevation: 1.2,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Image.asset("assets/menu.png",
                    fit: BoxFit.contain,
                    color: const Color.fromARGB(255, 4, 97, 173)),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 205, 215, 223),
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/ProfilePic.png",
                    width: 90,
                    height: 85,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 50, left: 50),
                    width: 70,
                    child: DropdownButton(
                      isExpanded: true,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      icon: const Icon(Icons.arrow_right),
                      focusColor: const Color.fromARGB(255, 255, 255, 255),
                      value: profilevalue,
                      underline: const Text(""),
                      items: menuItems,
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(child: MobileDrawer(
              changeCurrentScreen: (Widget screen) {
                Navigator.pop(context);
                changeCurrentScreen(screen);
              },
            ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          width: 500,
          child: currScreen,
        ),
      ),
    );
  }
}
