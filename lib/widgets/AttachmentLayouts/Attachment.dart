import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Attachments extends StatelessWidget {
  Attachments({super.key, required this.attachmentno});
  List attachmentIconList = ["assets/Attachments/wordicon.png", "assets/Attachments/txt.png","assets/Attachments/pdficon.png"];
  List title = [
    "Document.doc",
    "Document.txt",
    "Document.pdf"
  ];
  int attachmentno;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        width: 270,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(192, 96, 106, 255)),
          borderRadius: BorderRadius.circular(5)
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(240, 240, 237, 229),
            border: Border.all(color: const Color.fromARGB(212, 114, 114, 133)),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Row(
            children: [
              Image.asset(attachmentIconList[attachmentno]),
              const SizedBox(width: 5,),
              Text(title[attachmentno],style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w400),)
              ],
          ),
        ),
      ),
    );
  }
}
