import 'package:flutter/material.dart';
import 'package:mtrench/DataModel/menuItems.dart';
import 'package:mtrench/Screens/Attendance.dart';
import 'package:mtrench/Screens/CalendarSCreen.dart';
import 'package:mtrench/Screens/ChatRoom.dart';
import 'package:mtrench/Screens/Dashboard.dart';
import 'package:mtrench/Screens/Employee.dart';
import 'package:mtrench/Screens/Help.dart';
import 'package:mtrench/Screens/Notifications.dart';
import 'package:mtrench/Screens/Productivity.dart';
import 'package:mtrench/Screens/ProjectManagement.dart';
import 'package:mtrench/Screens/Setting.dart';
import 'package:mtrench/Screens/Signout.dart';
import 'package:mtrench/Screens/Team.dart';
import 'package:mtrench/Screens/employeeMonitor.dart';
import 'package:mtrench/widgets/MenuItem.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({super.key});

  @override
  State<WebLayout> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebLayout> {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(
        value: "Admin",
        child: Text(
          "Admin",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        )),
    const DropdownMenuItem(
      value: "my profile",
      child: Text(
        "my profile",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    ),
    const DropdownMenuItem(
      value: "change password",
      child: Text(
        "change password",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    ),
    const DropdownMenuItem(
      value: "add account",
      child: Text(
        "add account",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    ),
  ];
  String profilevalue = "Admin";
  String data = "";
  Widget currscreen = const ProjectManagement();

  void changescreen() {
    setState(() {
      switch (prevbtn) {
        case 0:
          currscreen = const Dashboard();
          break;
        case 1:
          currscreen = const Employeemonitor();
          break;
        case 2:
          currscreen = const Productivity();
          break;
        case 3:
          currscreen = const Employee();
          break;
        case 4:
          currscreen = const TeamScreen();
          break;
        case 5:
          currscreen = const AttendanceScreen();
          break;
        case 6:
          currscreen = const ProjectManagement();
          break;
        case 7:
          currscreen = const ChatRoomScreen();
          break;
        case 8:
          currscreen = const CalScreen();
          break;
        case 9:
          currscreen = const SettingScreen();
          break;
        case 10:
          currscreen = const HelpScreen();
          break;
        case 11:
          currscreen = const Signout();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            elevation: 0.8,
            leading: Row(
              children: [
                Container(
                  width: 70,
                ),
                Container(
                  width: 170,
                  padding: const EdgeInsets.only(right: 30),
                  
                  child: Image.asset(
                    width: 100,
                    height: 80,
                    'assets/des.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            actions: [
              Row(
                children: [
                  IconButton(
                      splashRadius: 20,
                      iconSize: 30,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Notifications(),
                        ));
                      },
                      icon: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(255, 0, 4, 255)),
                              borderRadius: BorderRadius.circular(100)),
                          child: Image.asset(
                            "assets/notification.png",
                          ))),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/ProfilePic.png",
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 50),
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
              )
            ],
            leadingWidth: 250,
            backgroundColor: Colors.white),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 172, 172, 172),
                      offset: Offset(5, 0),
                      blurRadius: 1.0),
                  BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      offset: Offset(-3, 0),
                      blurRadius: 1.0),
                  BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      offset: Offset(5, 0),
                      blurRadius: 1.0)
                ],
              ),
              width: 240,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Menu(
                      index: index,
                      rerender: () {
                        changescreen();
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 20),
              child: currscreen,
            )
          ],
        ),
      ),
    );
  }
}
