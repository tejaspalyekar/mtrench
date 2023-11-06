import 'package:flutter/material.dart';
import 'package:mtrench/widgets/AttachmentLayouts/Attachment.dart';
class WebAttachMentLayout2 extends StatelessWidget {
  const WebAttachMentLayout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 120),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Attachments(attachmentno: 0),
          SizedBox(height: 20,),
          Attachments(attachmentno: 1), 
          SizedBox(height: 20,),
          Attachments(attachmentno: 2)
        ],
      ),
    );
  }
}