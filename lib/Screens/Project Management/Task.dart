import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtrench/DataModel/menuItems.dart';
import 'package:mtrench/widgets/AttachmentLayouts/Attachment.dart';
import 'package:mtrench/widgets/AttachmentLayouts/MobileAttachmentLayout.dart';
import 'package:mtrench/widgets/AttachmentLayouts/WEbAttachment2.dart';
import 'package:mtrench/widgets/AttachmentLayouts/webAttachmentLayout.dart';
import 'package:mtrench/widgets/TaskCards.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});
  Color themecolor = const Color.fromARGB(212, 114, 114, 133);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Task",
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
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.bookmark_border, color: themecolor, size: 38),
                const SizedBox(
                  width: 18,
                ),
                Text("Lables",
                    style: GoogleFonts.poppins(
                        color: themecolor,
                        fontSize: 24,
                        fontWeight: FontWeight.w400)),
                const SizedBox(
                  width: 80,
                ),
                Text("Website Design",
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.w500))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.group, color: themecolor, size: 38),
                const SizedBox(
                  width: 18,
                ),
                Text("Assignee",
                    style: GoogleFonts.poppins(
                        color: themecolor,
                        fontSize: 24,
                        fontWeight: FontWeight.w400)),
                const SizedBox(
                  width: 50,
                ),
                Row( 
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [ 
                for (int i = 0; i < assigneeimage.length; i++) 
                 Align( 
                  widthFactor: 0.5, 
                
                  child: CircleAvatar( 
                    radius: 27, 

                    backgroundColor: Colors.white, 
                   
                    child: CircleAvatar( 
                      radius: 25, 
                      backgroundImage: AssetImage(assigneeimage[i]),backgroundColor: Colors.white, 
                    ), 
                  ), 
                ) 
                ], 
               ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset("assets/pace.png"),
                const SizedBox(
                  width: 24,
                ),
                Text("Timeline",
                    style: GoogleFonts.poppins(
                        color: themecolor,
                        fontSize: 24,
                        fontWeight: FontWeight.w400)),
                const SizedBox(
                  width: 58,
                ),
                Text("August 25, 2023",
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.w500))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset("assets/status.png"),
                const SizedBox(
                  width: 24,
                ),
                Text("Status",
                    style: GoogleFonts.poppins(
                        color: themecolor,
                        fontSize: 24,
                        fontWeight: FontWeight.w400)),
                const SizedBox(
                  width: 83,
                ),
                Text("In Progress",
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.w500))
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
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
         const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Attachment",
                  style: GoogleFonts.poppins(fontSize: 24),
                ),
                const SizedBox(
                  width: 3,
                ),
                Image.asset(
                  "assets/attach_file.png",
                  color: themecolor,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return constraints.maxWidth > 870
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Attachments(attachmentno: 0),
                          const SizedBox(
                            width: 30,
                          ),
                          Attachments(attachmentno: 1),
                          const SizedBox(
                            width: 30,
                          ),
                          Attachments(attachmentno: 2)
                        ],
                      )
                    : constraints.maxWidth > 580
                        ? const WebAttachMentLayout()
                        : constraints.maxWidth > 421
                            ? const WebAttachMentLayout2()
                            : const MobileAttachMentLayout();
              },
            ),
          const SizedBox(height: 25,),
          Container(
              color: themecolor,
              height: 0.5,
            ),
          const SizedBox(height: 25,), 
          Row(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: TaskCards(iconcolor: Color.fromARGB(255, 235, 185, 111), title: "To-Do-Task", tasklist: const ["Research","Wireframe","User Interface"], userlist: const [[1,3,0],[4,3],[0,1,2]])),
              const SizedBox(width: 30,),
              Expanded(child: TaskCards(iconcolor: Color.fromARGB(255, 114, 0, 190), title: "InProgress", tasklist: const ["Mood board","User flow","Empathy Mapping"], userlist: const [[0,2],[4,2,3],[1,2]])),
              const SizedBox(width: 30,),
              Expanded(child: TaskCards(iconcolor: Color.fromARGB(255, 255, 0, 0), title: "Overdue", tasklist: const ["User Persona","Brainstorm"], userlist: const [[0,3],[4,2,1]])),
              const SizedBox(width: 30,),
              Expanded(child: TaskCards(iconcolor: Color.fromARGB(255, 43, 255, 0),title: "Completed", tasklist: const ["Site map","Crazy 8"], userlist: const [[0,1,2],[4,3]])),
            ],
          ),
         
          
           

      ],
    );
  }
}
