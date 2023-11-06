import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtrench/DataModel/menuItems.dart';
import 'package:mtrench/widgets/TaskCards.dart';
class MyTaskScreen extends StatelessWidget {
  MyTaskScreen({super.key});
  Color themecolor = const Color.fromARGB(212, 114, 114, 133);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Task",
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 0, 80, 252))),
            Text("Tue, Jan 02,2023",
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromARGB(255, 0, 80, 252))),
          ],
        ),
        const SizedBox(height: 15),
        Text(
          "Website Development",
          style: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        Text("Research",
                style: GoogleFonts.poppins(
                  color: themecolor,
                    fontSize: 32, fontWeight: FontWeight.w500)),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Description",
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.w400)),
            Text(
              "Website design research involves gathering insights about the target audience's preferences and behavior. It also includes analyzing competitors to identify industry trends and best practices. The aim is to create a user-friendly and visually appealing website that meets users' needs and stands out in the market.",
              maxLines: 10,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(fontSize: 20, color: themecolor),
            ),
          ],
        ),
        const SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(assigneeimage[1],fit: BoxFit.fitWidth,filterQuality: FilterQuality.high,),
            ),
            const SizedBox(width: 10,),
            Text("Vijay Joseph",style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.w400),),
          ],
        ),
        const SizedBox(height: 5,),
        Container(
          color: const Color.fromARGB(255, 0, 80, 252),
              height: 2,
              width: 300,
        ),
        Container(
              color: themecolor,
              height: 0.5,
            ),
        const SizedBox(height: 20,),
         Row(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: TaskCards(iconcolor: Color.fromARGB(255, 235, 185, 111), title: "To-Do-Task", tasklist: const ["Interview","Crazy 8"],userlist: [[],[]],)),
              const SizedBox(width: 30,),
              Expanded(child: TaskCards(iconcolor: Color.fromARGB(255, 114, 0, 190), title: "InProgress", tasklist: const ["Survey"],userlist: [[]],)),
              const SizedBox(width: 30,),
              Expanded(child: TaskCards(iconcolor: Color.fromARGB(255, 255, 0, 0), title: "Overdue", tasklist: const ["Data Collection"],userlist: [[]],)),
              const SizedBox(width: 30,),
              Expanded(child: TaskCards(iconcolor: Color.fromARGB(255, 43, 255, 0),title: "Completed", tasklist: const ["Question for Interview"], userlist: [[],[]],)),
            ],
          ),
      ],
    );
  }
}