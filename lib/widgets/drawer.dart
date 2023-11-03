import 'package:flutter/material.dart';
import 'package:mtrench/Responsive/Mobile/Screens/Attendance.dart';
import 'package:mtrench/Responsive/Mobile/Screens/CalendarSCreen.dart';
import 'package:mtrench/Responsive/Mobile/Screens/ChatRoom.dart';
import 'package:mtrench/Responsive/Mobile/Screens/Dashboard.dart';
import 'package:mtrench/Responsive/Mobile/Screens/Employee.dart';
import 'package:mtrench/Responsive/Mobile/Screens/Help.dart';
import 'package:mtrench/Responsive/Mobile/Screens/Productivity.dart';
import 'package:mtrench/Responsive/Mobile/Screens/ProjectManagement.dart';
import 'package:mtrench/Responsive/Mobile/Screens/Setting.dart';
import 'package:mtrench/Responsive/Mobile/Screens/Signout.dart';
import 'package:mtrench/Responsive/Mobile/Screens/Team.dart';
import 'package:mtrench/Responsive/Mobile/Screens/employeeMonitor.dart';
import 'package:mtrench/widgets/MenuItem.dart';

class MobileDrawer extends StatefulWidget {
  MobileDrawer({super.key, this.changeCurrentScreen});
  Function? changeCurrentScreen;
  @override
  State<MobileDrawer> createState() => _nameState();
}

class _nameState extends State<MobileDrawer> {
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Menu(
          index: 0,
          rerender: (int idx) {
            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const Dashboard());
            
          },
        ),
        Menu(
          index: 1,
          rerender: (int idx) {
            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const Employeemonitor());
          },
        ),
        Menu(
          index: 2,
          rerender: (int idx) {

            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const Productivity());
          },
        ),
        Menu(
          index: 3,
          rerender: (int idx) {

            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const Employee());
          },
        ),
        Menu(
          index: 4,
          rerender: (int idx) {

            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const TeamScreen());
          },
        ),
        Menu(
          index: 5,
          rerender: (int idx) {
            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const AttendanceScreen());
          },
        ),
        Menu(
          index: 6,
          rerender: (int idx) {
            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const ProjectManagement());
          },
        ),
        Menu(
          index: 7,
          rerender: (int idx) {
            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const ChatRoomScreen());
          },
        ),
        Menu(
          index: 8,
          rerender: (int idx) {
            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const CalScreen());
          },
        ),
        Menu(
          index: 9,
          rerender: (int idx) {
            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const SettingScreen());
          },
        ),
        Menu(
          index: 10,
          rerender: (int idx) {
            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const HelpScreen());
          },
        ),
        Menu(
          index: 11,
          rerender: (int idx) {
            Menu(
              index: idx,
            );
            widget.changeCurrentScreen!(const Signout());
          },
        ),
      ],
    );
  }
}
