import 'package:flutter/material.dart';
import 'package:mtrench/DataModel/menuItems.dart';
import 'package:mtrench/Screens/Menu/Attendance.dart';
import 'package:mtrench/Screens/Menu/CalendarScreen.dart';
import 'package:mtrench/Screens/Menu/ChatRoom.dart';
import 'package:mtrench/Screens/Menu/Dashboard.dart';
import 'package:mtrench/Screens/Menu/Employee.dart';
import 'package:mtrench/Screens/Menu/Help.dart';
import 'package:mtrench/Screens/Notifications.dart';
import 'package:mtrench/Screens/Menu/Productivity.dart';
import 'package:mtrench/Screens/Menu/ProjectManagement.dart';
import 'package:mtrench/Screens/Menu/Setting.dart';
import 'package:mtrench/Screens/Menu/Signout.dart';
import 'package:mtrench/Screens/Menu/Team.dart';
import 'package:mtrench/Screens/Emp%20Monitoring/AddNewEmp.dart';
import 'package:mtrench/Screens/Project%20Management/MyTask.dart';
import 'package:mtrench/Screens/Project%20Management/Projects.dart';
import 'package:mtrench/Screens/Project%20Management/Task.dart';
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
  double onhover = 34;
  double nohover = 30;
  bool profilehover = false;
  bool notifyhover = false;
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
          if (submenu == "Projects") {
            currscreen = const ProjectsScreen();
          } else if (submenu == "Task") {
            currscreen = TaskScreen();
          } else {
            currscreen = MyTaskScreen();
          }

          break;
        case 7:
          currscreen = const ChatRoomScreen();
          break;
        case 8:
          currscreen = const CalScreens();
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
                      iconSize: 40,
                      onPressed: () {
                        
                      },
                      icon: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notifications(),));
                          },
                          mouseCursor: SystemMouseCursors.click,
                          onHover: (value) {
                            setState(() {
                              notifyhover = value;
                            });
                          },
                          child: Image.asset(
                                 "assets/Notification.png",
                                 width: notifyhover ? onhover : nohover,
                                  height: notifyhover ? onhover : nohover,
                  ))),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/ProfilePic.png",
                    width: profilehover ? onhover : nohover,
                    height: profilehover ? onhover : nohover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        profilehover = value;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 50),
                      width: 70,
                      child: DropdownButton(
                        hint: const Text("Account Details"),
                        isExpanded: true,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        icon: const Icon(Icons.arrow_right),
                        focusColor: const Color.fromARGB(255, 255, 255, 255),
                        value: profilevalue,
                        underline: const Text(""),
                        items: menuItems,
                        onChanged: (value) {},
                      ),
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
                padding: const EdgeInsets.only(top: 20),
                child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Menu(
                      index: index,
                      rerender: (int val) {
                        changescreen();
                      },
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 10, left: 30, right: 20, bottom: 10),
                  child: currscreen,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
