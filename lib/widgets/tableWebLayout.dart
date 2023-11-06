import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtrench/DataModel/menuItems.dart';

class tableWebLayout extends StatefulWidget {
  tableWebLayout({super.key});

  @override
  State<tableWebLayout> createState() => _tableWebLayoutState();
}

class _tableWebLayoutState extends State<tableWebLayout> {
  Color themecolor = const Color.fromARGB(212, 114, 114, 133);
   double profileIconSize = 25;
  late int iconno;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                
                  child: InkWell(
                    mouseCursor: SystemMouseCursors.basic,
                      onHover: (value) {
                        setState(() {
                          if (value == true) {
                            iconno = i;
                            profileIconSize = 28;
                          } else {
                            profileIconSize = 25;
                          }
                        });
                      },
                      onTap: () {},
                      borderRadius: BorderRadius.circular(100),
                      splashColor: Colors.white,
                    child: CircleAvatar( 
                      
                      radius: profileIconSize == 28
                            ? i == iconno
                                ? 28
                                : 27
                            : 27,
                  
                      backgroundColor: Colors.white, 
                     
                      child: CircleAvatar( 
                        radius: profileIconSize == 28
                            ? i == iconno
                                ? 28
                                : 25
                            : 25, 
                        backgroundImage: AssetImage(assigneeimage[i]),backgroundColor: Colors.white, 
                      ), 
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
        );
  }
}