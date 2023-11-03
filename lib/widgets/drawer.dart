import 'package:flutter/material.dart';
import 'package:mtrench/Screens/Attendance.dart';
import 'package:mtrench/Screens/CalendarSCreen.dart';
import 'package:mtrench/Screens/ChatRoom.dart';
import 'package:mtrench/Screens/Dashboard.dart';
import 'package:mtrench/Screens/Employee.dart';
import 'package:mtrench/Screens/Help.dart';
import 'package:mtrench/Screens/Productivity.dart';
import 'package:mtrench/Screens/ProjectManagement.dart';
import 'package:mtrench/Screens/Setting.dart';
import 'package:mtrench/Screens/Signout.dart';
import 'package:mtrench/Screens/Team.dart';
import 'package:mtrench/Screens/employeeMonitor.dart';
import 'package:mtrench/widgets/MenuItem.dart';

class MobileDrawer extends StatefulWidget {
  MobileDrawer({super.key, this.changeCurrentScreen});
  Function? changeCurrentScreen;
  @override
  State<MobileDrawer> createState() => _nameState();
}

class _nameState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Menu(
          index: 0,
          rerender: (int idx) {
            
            setState(() {
              print("set state of mobile drawer");
            });
            widget.changeCurrentScreen!(const Dashboard());
          },
        ),
        Menu(
          index: 1,
          rerender: (int idx) {
            
            setState(() {
              print("set state of mobile drawer");
            });
            widget.changeCurrentScreen!(const Employeemonitor());
          },
        ),
        Menu(
          index: 2,
          rerender: (int idx) {
         
            setState(() {
              print("set state of mobile drawer");
            });
            widget.changeCurrentScreen!(const Productivity());
          },
        ),
        Menu(
          index: 3,
          rerender: (int idx) {
          setState(() {
              print("set state of mobile drawer");
            });
            widget.changeCurrentScreen!(const Employee());
          },
        ),
        Menu(
          index: 4,
          rerender: (int idx) {
            
            widget.changeCurrentScreen!(const TeamScreen());
          },
        ),
        Menu(
          index: 5,
          rerender: (int idx) {
           
            widget.changeCurrentScreen!(const AttendanceScreen());
          },
        ),
        Menu(
          index: 6,
          rerender: (int idx) {
           
            widget.changeCurrentScreen!(const ProjectManagement());
          },
        ),
        Menu(
          index: 7,
          rerender: (int idx) {
            
            widget.changeCurrentScreen!(const ChatRoomScreen());
          },
        ),
        Menu(
          index: 8,
          rerender: (int idx) {
            
            widget.changeCurrentScreen!(const CalScreen());
          },
        ),
        Menu(
          index: 9,
          rerender: (int idx) {
            
            widget.changeCurrentScreen!(const SettingScreen());
          },
        ),
        Menu(
          index: 10,
          rerender: (int idx) {
            
            widget.changeCurrentScreen!(const HelpScreen());
          },
        ),
        Menu(
          index: 11,
          rerender: (int idx) {
            
            widget.changeCurrentScreen!(const Signout());
          },
        ),
      ],
    );
  }
}
