// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtrench/widgets/AddTaskCard.dart';
import 'package:mtrench/widgets/CustomCards%20.dart';

class TaskCards extends StatelessWidget {
  TaskCards(
      {super.key,
      required this.iconcolor,
      required this.title,
      required this.tasklist, required this.userlist});
  Color iconcolor;
  List<List<int>> userlist;
  String title;
  List tasklist;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(192, 96, 106, 255)),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 8,
                decoration: BoxDecoration(
                    color: iconcolor,
                    borderRadius: BorderRadius.circular(100)),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  title,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Color.fromARGB(192, 0, 17, 255),
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            for (int i = 0; i < tasklist.length;i++)    
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: CustomCards(title: tasklist[i], users: userlist[i])),
              
          ],
        ),
      AddTaskCards()
      ],
    );
  }
}
