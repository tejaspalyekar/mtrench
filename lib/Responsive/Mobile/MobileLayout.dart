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
    return Scaffold(
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  splashRadius: 20,
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notifications(),));
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
                    fit: BoxFit.contain,
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
                    rerender: () {
                      changescreen();
                      if(prevbtn != 1 && prevbtn!= 6){
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          width: 500,
          child: currscreen,
        ),
      ),
    );
  }
}
