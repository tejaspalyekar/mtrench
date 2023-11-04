import 'package:flutter/material.dart';
import 'package:mtrench/DataModel/menuItems.dart';
import 'package:mtrench/widgets/ReuseableExpansionTile.dart';

class Menu extends StatefulWidget {
  Menu({super.key, required this.index, this.rerender});
  int index;
  Function? rerender;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late Color defaultBtnColor;
  Color defaulttitleColor = Colors.black;
  late Color borderColor;
  bool btncheckStatus = false;
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    if (widget.index == prevbtn) {
      defaultBtnColor = const Color.fromARGB(230, 252, 250, 250);
      borderColor = Color.fromARGB(255, 137, 139, 255);
      defaulttitleColor = Color.fromARGB(255, 0, 26, 255);
    } else {
      defaultBtnColor = hover == true
          ? const Color.fromARGB(172, 187, 187, 187)
          : const Color.fromARGB(255, 255, 255, 255);
      borderColor = const Color.fromARGB(255, 255, 255, 255);
      defaulttitleColor = Colors.black;
    }

    return Column(
      children: [
        SizedBox(
          height: widget.index == 1
              ? 0
              : widget.index == 6
                  ? 0
                  : 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: widget.index == 1
                ? ReuseableExpansionTitle(
                    titlecolor: defaulttitleColor,
                    bordercolor: borderColor,
                    index: widget.index,
                    rerender: () {
                      widget.rerender!();
                    },
                  )
                : widget.index == 6
                    ? ReuseableExpansionTitle(
                        titlecolor: defaulttitleColor,
                        bordercolor: borderColor,
                        index: widget.index,
                        rerender: () {
                          widget.rerender!();
                        },
                      )
                    : TextButton.icon(
                        onHover: (value) {
                          if (value) {
                            setState(() {
                              hover = value;
                            });
                          }
                          if (!value) {
                            setState(() {
                              hover = value;
                            });
                          }
                        },
                        style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                            minimumSize: const MaterialStatePropertyAll(
                                Size(double.infinity, 40)),
                            side: MaterialStatePropertyAll(
                                BorderSide(color: borderColor)),
                            backgroundColor:
                                MaterialStatePropertyAll(defaultBtnColor)),
                        onPressed: () {
                          prevbtn = widget.index;
                          widget.rerender!();
                        },
                        icon: Icon(
                          iconsList[widget.index],
                          color: defaulttitleColor,
                          size: 15,
                        ),
                        label: Text(
                          titlesList[widget.index],
                          style: TextStyle(
                              color: defaulttitleColor,
                              fontWeight: FontWeight.w500),
                        )),
          ),
        ),
        SizedBox(
          height: widget.index == 1
              ? 0
              : widget.index == 6
                  ? 0
                  : 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            height: widget.index == 8 ? 1 : 0,
            color: const Color.fromARGB(185, 187, 187, 187),
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}
