import 'package:flutter/material.dart';
import 'package:mtrench/DataModel/menuItems.dart';

class ReuseableExpansionTitle extends StatefulWidget {
  ReuseableExpansionTitle(
      {super.key,
      required this.bordercolor,
      required this.titlecolor,
      required this.index,
      this.rerender});

  Color titlecolor;
  int index;
  Function? rerender;
  Color bordercolor;

  @override
  State<ReuseableExpansionTitle> createState() =>
      _ReuseableExpansionTitleState();
}

class _ReuseableExpansionTitleState extends State<ReuseableExpansionTitle> {
  bool expanded = false;

  List<List<String>> expansionpanelitems = [
    ["Add new Employee"],
    ["Projects", "Task", "My Task"]
  ];
  late int itemidx;
  bool hover = false;
  Color onhover = const Color.fromARGB(146, 187, 187, 187);
  Color backcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    if (widget.index == 1) {
      itemidx = 0;
    } else {
      itemidx = 1;
    }
    return ExpansionPanelList(
      backcolor: backcolor,
      index: widget.index,
      dividerColor: Colors.white,
      expansionCallback: (panelIndex, isExpanded) {},
      elevation: 0,
      expandedHeaderPadding: EdgeInsets.zero,
      children: [
        ExpansionPanel(
            canTapOnHeader: true,
            headerBuilder: (context, isExpanded) {
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(width: 1, color: widget.bordercolor),
                      bottom: BorderSide(width: 1, color: widget.bordercolor),
                      top: BorderSide(width: 1, color: widget.bordercolor)),
                ),
                child: InkWell(
                  onHover: (value) {
                   
                    setState(() {
                      hover = value;
                     value ? backcolor = onhover : backcolor = Colors.white;
                    });
                  },
                  onTap: () {
                    submenu = expansionpanelitems[itemidx][0];
                    prevbtn = widget.index;
                    widget.rerender!(3);
                    setState(() {
                      if (expanded) {
                        expanded = false;
                      } else {
                        expanded = true;
                      }
                    });
                  },
                  child: Container(
   
                    color: hover ? onhover : Colors.white,
                    child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Image.asset(
                              iconsList[widget.index],
                              color: widget.titlecolor,
                              width: 15,
                              height: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(titlesList[widget.index],
                              style: TextStyle(
                                  fontSize: 14,
                                  color: widget.titlecolor,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            body: Column(
              children: [
                Container(
                  
                  padding: const EdgeInsets.only(top: 10),
                  height: itemidx == 0 ? 60 : 110,
                  width: 200,
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context)
                        .copyWith(scrollbars: false),
                    child: ListView.builder(
                      itemCount: expansionpanelitems[itemidx].length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 5, right: 5, left: 5),
                          child: TextButton.icon(
                              style: ButtonStyle(
                                  side: MaterialStatePropertyAll(BorderSide(
                                      color: expansionpanelitems[itemidx]
                                                  [index] ==
                                              submenu
                                          ? Color.fromARGB(133, 112, 112, 112)
                                          : const Color.fromARGB(
                                              255, 255, 255, 255))),
                                  alignment: Alignment.topLeft),
                              label: Text(expansionpanelitems[itemidx][index],
                                  style: const TextStyle(color: Colors.black)),
                              onPressed: () {
                                prevbtn = widget.index;
                                submenu = expansionpanelitems[itemidx][index];
                                widget.rerender!(1);
                              },
                              icon: const Icon(
                                Icons.arrow_right,
                                color: Color.fromARGB(255, 0, 4, 255),
                                size: 20,
                              )),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            isExpanded: expanded)
      ],
    );
  }
}
