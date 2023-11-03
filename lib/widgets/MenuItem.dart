import 'package:flutter/material.dart';
import 'package:mtrench/DataModel/menuItems.dart';

//change to stateless afterwards
class Menu extends StatefulWidget {
  Menu({super.key, required this.index, this.rerender, this.drawerRerender});
  int index;
  Function? rerender;
  Function? drawerRerender;
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late Color defaultBtnColor;
  Color defaulttitleColor = Colors.black;
  late Color borderColor;
  bool btncheckStatus = false;

  @override
  Widget build(BuildContext context) {
    if (widget.index == prevbtn) {
      defaultBtnColor = const Color.fromARGB(230, 241, 241, 241);
      borderColor = const Color.fromARGB(255, 43, 92, 252);
      defaulttitleColor = const Color.fromARGB(255, 43, 92, 252);
    } else {
      defaultBtnColor = const Color.fromARGB(255, 255, 255, 255);
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
                      defaultBtnColor =
                          const Color.fromARGB(123, 209, 209, 209);
                    });
                  }
                  if (!value) {
                    setState(() {
                      defaultBtnColor =
                          const Color.fromARGB(255, 255, 255, 255);
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
                  prevbtn = widget.index; //on pressed

                  /*setState(() {
                    defaultBtnColor = const Color.fromARGB(230, 230, 230, 230);
                    borderColor = const Color.fromARGB(255, 43, 92, 252);
                    defaulttitleColor = const Color.fromARGB(255, 43, 92, 252);
                  });*/
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
