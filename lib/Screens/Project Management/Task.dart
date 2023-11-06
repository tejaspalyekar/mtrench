import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtrench/widgets/tableMobileLayout.dart';
import 'package:mtrench/widgets/tableWebLayout.dart';
import 'package:mtrench/widgets/AttachmentLayouts/Attachment.dart';
import 'package:mtrench/widgets/AttachmentLayouts/MobileAttachmentLayout.dart';
import 'package:mtrench/widgets/AttachmentLayouts/WEbAttachment2.dart';
import 'package:mtrench/widgets/AttachmentLayouts/webAttachmentLayout.dart';
import 'package:mtrench/widgets/TaskCards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});
  Color themecolor = const Color.fromARGB(212, 114, 114, 133);
  PageController taskpagecontroller = PageController();

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
        LayoutBuilder(builder: (context, constraints) {
          return constraints.maxWidth > 580
              ? tableWebLayout()
              : tableMobileLayout();
        }),
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
        const SizedBox(
          height: 25,
        ),
        Container(
          color: themecolor,
          height: 0.5,
        ),
        const SizedBox(
          height: 25,
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return constraints.maxWidth > 870
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: TaskCards(
                              iconcolor:
                                  const Color.fromARGB(255, 235, 185, 111),
                              title: "To-Do-Task",
                              tasklist: const [
                            "Research",
                            "Wireframe",
                            "User Interface"
                          ],
                              userlist: const [
                            [1, 3, 0],
                            [4, 3],
                            [0, 1, 2]
                          ])),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: TaskCards(
                              iconcolor: const Color.fromARGB(255, 114, 0, 190),
                              title: "InProgress",
                              tasklist: const [
                            "Mood board",
                            "User flow",
                            "Empathy Mapping"
                          ],
                              userlist: const [
                            [0, 2],
                            [4, 2, 3],
                            [1, 2]
                          ])),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: TaskCards(
                              iconcolor: const Color.fromARGB(255, 255, 0, 0),
                              title: "Overdue",
                              tasklist: const [
                            "User Persona",
                            "Brainstorm"
                          ],
                              userlist: const [
                            [0, 3],
                            [4, 2, 1]
                          ])),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: TaskCards(
                              iconcolor: const Color.fromARGB(255, 43, 255, 0),
                              title: "Completed",
                              tasklist: const [
                            "Site map",
                            "Crazy 8"
                          ],
                              userlist: const [
                            [0, 1, 2],
                            [4, 3]
                          ])),
                    ],
                  )
                : constraints.maxWidth > 580
                    ? Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: TaskCards(
                                      iconcolor: const Color.fromARGB(
                                          255, 235, 185, 111),
                                      title: "To-Do-Task",
                                      tasklist: const [
                                    "Research",
                                    "Wireframe",
                                    "User Interface"
                                  ],
                                      userlist: const [
                                    [1, 3, 0],
                                    [4, 3],
                                    [0, 1, 2]
                                  ])),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: TaskCards(
                                      iconcolor: const Color.fromARGB(
                                          255, 114, 0, 190),
                                      title: "InProgress",
                                      tasklist: const [
                                    "Mood board",
                                    "User flow",
                                    "Empathy Mapping"
                                  ],
                                      userlist: const [
                                    [0, 2],
                                    [4, 2, 3],
                                    [1, 2]
                                  ])),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 1,
                            color: themecolor,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: TaskCards(
                                      iconcolor:
                                          const Color.fromARGB(255, 255, 0, 0),
                                      title: "Overdue",
                                      tasklist: const [
                                    "User Persona",
                                    "Brainstorm"
                                  ],
                                      userlist: const [
                                    [0, 3],
                                    [4, 2, 1]
                                  ])),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: TaskCards(
                                      iconcolor:
                                          const Color.fromARGB(255, 43, 255, 0),
                                      title: "Completed",
                                      tasklist: const [
                                    "Site map",
                                    "Crazy 8"
                                  ],
                                      userlist: const [
                                    [0, 1, 2],
                                    [4, 3]
                                  ])),
                            ],
                          )
                        ],
                      )
                    : Column(
                        children: [
                          SmoothPageIndicator(
                              onDotClicked: (index) {
                                taskpagecontroller.animateToPage(index,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              controller: taskpagecontroller,
                              count: 4,
                              effect: const ScaleEffect(
                                  activeStrokeWidth: 0.1,
                                  dotWidth: 8,
                                  dotHeight: 8,
                                  activeDotColor:
                                      Color.fromARGB(255, 4, 27, 233),
                                  dotColor:
                                      Color.fromARGB(255, 156, 156, 156))),
                          const SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            child: SizedBox(
                              height: 900,
                              child: PageView(
                                controller: taskpagecontroller,
                                children: [
                                  Expanded(
                                      child: TaskCards(
                                          iconcolor: const Color.fromARGB(
                                              255, 235, 185, 111),
                                          title: "To-Do-Task",
                                          tasklist: const [
                                        "Research",
                                        "Wireframe",
                                        "User Interface"
                                      ],
                                          userlist: const [
                                        [1, 3, 0],
                                        [4, 3],
                                        [0, 1, 2]
                                      ])),
                                  Expanded(
                                      child: TaskCards(
                                          iconcolor: const Color.fromARGB(
                                              255, 114, 0, 190),
                                          title: "InProgress",
                                          tasklist: const [
                                        "Mood board",
                                        "User flow",
                                        "Empathy Mapping"
                                      ],
                                          userlist: const [
                                        [0, 2],
                                        [4, 2, 3],
                                        [1, 2]
                                      ])),
                                  Expanded(
                                      child: TaskCards(
                                          iconcolor: const Color.fromARGB(
                                              255, 255, 0, 0),
                                          title: "Overdue",
                                          tasklist: const [
                                        "User Persona",
                                        "Brainstorm"
                                      ],
                                          userlist: const [
                                        [0, 3],
                                        [4, 2, 1]
                                      ])),
                                  Expanded(
                                      child: TaskCards(
                                          iconcolor: const Color.fromARGB(
                                              255, 43, 255, 0),
                                          title: "Completed",
                                          tasklist: const [
                                        "Site map",
                                        "Crazy 8"
                                      ],
                                          userlist: const [
                                        [0, 1, 2],
                                        [4, 3]
                                      ])),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
          },
        )
      ],
    );
  }
}
