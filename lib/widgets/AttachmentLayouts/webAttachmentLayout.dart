import 'package:flutter/material.dart';
import 'package:mtrench/widgets/AttachmentLayouts/Attachment.dart';
class WebAttachMentLayout extends StatelessWidget {
  const WebAttachMentLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Attachments(attachmentno: 0),
            const SizedBox(width: 30,),
            Attachments(attachmentno: 1),
          ],
        ),
        SizedBox(height: 20,),
        Attachments(attachmentno: 2)
      ],
    );
  }
}