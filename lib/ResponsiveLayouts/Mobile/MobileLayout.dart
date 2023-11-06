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
  double onhover = 34;
  double nohover = 30;
  bool profilehover = false;
  bool notifyhover = false;
  void changescreen() {
    setState(() {
      switch (currbtn) {
        case 0:
          currentScreen = const Dashboard();
          break;
        case 1:
          currentScreen = const Employeemonitor();
          break;
        case 2:
          currentScreen = const Productivity();
          break;
        case 3:
          currentScreen = const Employee();
          break;
        case 4:
          currentScreen = const TeamScreen();
          break;
        case 5:
          currentScreen = const AttendanceScreen();
          break;
        case 6:
          currentScreen = const ProjectManagement();

          if (submenu == "Projects") {
            currentScreen = const ProjectsScreen();
          } else if (submenu == "Task") {
            currentScreen = TaskScreen();
          } else {
            currentScreen = MyTaskScreen();
          }
          break;
        case 7:
          currentScreen = const ChatRoomScreen();
          break;
        case 8:
          currentScreen = const CalScreens();
          break;
        case 9:
          currentScreen = const SettingScreen();
          break;
        case 10:
          currentScreen = const HelpScreen();
          break;
        case 11:
          currentScreen = const Signout();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  splashRadius: 20,
                  iconSize: 40,
                  onPressed: () {},
                  icon: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Notifications(),
                        ));
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
            ),
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
                    width: 30,
                    height: 30,
                    color: const Color.fromARGB(255, 0, 4, 255)),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: DrawerHeader(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
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
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Menu(
                    index: index,
                    rerender: (int val) {
                      changescreen();
                      if (currbtn != 1 && currbtn != 6) {
                        Scaffold.of(context).closeDrawer();
                      }
                      if (val == 1) {
                        Scaffold.of(context).closeDrawer();
                      }
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: currentScreen,
          ),
        ),
      ),
    );
  }
}
