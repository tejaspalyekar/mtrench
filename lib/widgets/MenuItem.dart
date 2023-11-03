import 'package:flutter/material.dart';
import 'package:mtrench/DataModel/menuItems.dart';

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
        defaultBtnColor = Color.fromARGB(230, 252, 250, 250);
        borderColor = Color.fromARGB(255, 0, 4, 255);
        defaulttitleColor = Color.fromARGB(255, 0, 4, 255);
    } else {
        defaultBtnColor = hover == true? Color.fromARGB(172, 187, 187, 187) :const Color.fromARGB(255, 255, 255, 255);
        borderColor = const Color.fromARGB(255, 255, 255, 255);
        defaulttitleColor = Colors.black;
    }
    
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onHover: (value) {
                  //hover
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
                    backgroundColor: MaterialStatePropertyAll(defaultBtnColor)),
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
                  style: TextStyle(color: defaulttitleColor),
                )),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
