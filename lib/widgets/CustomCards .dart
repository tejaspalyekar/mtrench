import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtrench/DataModel/menuItems.dart';

class CustomCards extends StatelessWidget {
  CustomCards({super.key, required this.title, required this.users});
  String title;
  List<int> users;
  Color themecolor = const Color.fromARGB(212, 114, 114, 133);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color.fromARGB(192, 96, 106, 255))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                  ), 
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
             
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  iconSize: 18,
                  color: Colors.amber,
                  hoverColor: Color.fromARGB(178, 186, 196, 252),
                  splashRadius: 15,
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: themecolor,
                      
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Research for website design involves understanding the target audience through user research and analyzing competitors to create user-centered and competitive websites.",
            softWrap: true,
            maxLines: 10,
          ),
          const SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.all(10),
            child: Row( 
                  mainAxisAlignment: MainAxisAlignment.start, 
                  children: [ 
                  for (int i = 0; i < users.length; i++) 
                   Align( 
                    widthFactor: 0.5, 
                  
                    child: CircleAvatar( 
                      radius: 26, 
                      backgroundColor: Colors.white, 
                     
                      child: CircleAvatar( 
                        radius: 25, 
                        backgroundImage: AssetImage(assigneeimage[users[i]],),backgroundColor: Colors.white,  
                      ), 
                    ), 
                  ) 
                  ], 
                 ),
          ),
        ],
      ),
    );
  }
}
