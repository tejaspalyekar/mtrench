import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTaskCards extends StatelessWidget {
  const AddTaskCards({super.key});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(192, 96, 106, 255)),
                  borderRadius: BorderRadius.circular(10)
                ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(192, 96, 106, 255)),
                borderRadius: BorderRadius.circular(100)
              ),
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Text("Add Task",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
              fontSize: 24,color: Color.fromARGB(192, 0, 17, 255),fontWeight: FontWeight.w500),),
            )
            
          ],
        ),
      ),
    );
  }
}
