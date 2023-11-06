import 'package:flutter/material.dart';
import 'package:mtrench/Screens/Project%20Management/Task.dart';

List titlesList = [
  "Dashboard",
  "Employee Monitoring",
  "Productivity",
  "Employee",
  "Team",
  "Attendance",
  "Project Management",
  "ChatRoom",
  "Calendar",
  "Setting",
  "Help",
  "Signout",
];

List iconsList = [
  "assets/MenuIcons/grid_view.png",
  "assets/MenuIcons/tv.png",
  "assets/MenuIcons/query_stats.png",
  "assets/MenuIcons/group.png",
  "assets/MenuIcons/groups.png",
  "assets/MenuIcons/productivity.png",
  "assets/MenuIcons/folder_managed.png",
  "assets/MenuIcons/chat.png",
  "assets/MenuIcons/calendar_month.png",
  "assets/MenuIcons/settings.png",
  "assets/MenuIcons/help.png",
  "assets/MenuIcons/logout.png",
];
int currbtn = 6;

String submenu = "Task";

Widget currentScreen = TaskScreen();

List assigneeimage = [
  "assets/Assignee/1.png",
  "assets/Assignee/2.png",
  "assets/Assignee/3.png",
  "assets/Assignee/4.png",
  "assets/ProfilePic.png",
];
