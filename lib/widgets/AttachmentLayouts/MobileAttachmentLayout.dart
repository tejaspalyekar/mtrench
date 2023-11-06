import 'package:flutter/material.dart';
import 'package:mtrench/widgets/AttachmentLayouts/Attachment.dart';
class MobileAttachMentLayout extends StatelessWidget {
  const MobileAttachMentLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Attachments(attachmentno: 0),
                  const SizedBox(width: 30,),
                  Attachments(attachmentno: 1),
                  const SizedBox(width: 30,),
                  Attachments(attachmentno: 2)
              ],
            ),
    );
  }
}