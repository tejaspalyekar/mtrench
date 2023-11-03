import 'package:flutter/material.dart';
import 'package:mtrench/widgets/MenuItem.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(
        value: "Admin",
        child: Text(
          "Admin",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        )),
    const DropdownMenuItem(
      value: "my profile",
      child: Text(
        "my profile",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    ),
    const DropdownMenuItem(
      value: "change password",
      child: Text(
        "change password",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    ),
    const DropdownMenuItem(
      value: "add account",
      child: Text(
        "add account",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    ),
  ];
  String profilevalue = "Admin";
  String data = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            elevation: 0.8,
            leading: Row(
              children: [
                Container(
                  width: 45,
                ),
                Container(
                  width: 155,
                  padding: const EdgeInsets.only(right: 30),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 172, 172, 172),
                          offset: Offset(5, 0),
                          blurRadius: 1.0),
                      BoxShadow(
                          color: Color.fromARGB(255, 255, 255, 255),
                          offset: Offset(-3, 0),
                          blurRadius: 2.0),
                      BoxShadow(
                          color: Color.fromARGB(255, 255, 255, 255),
                          offset: Offset(5, 0),
                          blurRadius: 1.0)
                    ],
                  ),
                  child: Image.asset(
                    width: 100,
                    height: 80,
                    'assets/des.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            actions: [
              Row(
                children: [
                  IconButton(
                      splashRadius: 20,
                      iconSize: 30,
                      onPressed: () {},
                      icon: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 55, 58, 255)),
                              borderRadius: BorderRadius.circular(100)),
                          child: Image.asset(
                            "assets/notification.png",
                          ))),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/ProfilePic.png",
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 50),
                    width: 70,
                    child: DropdownButton(
                      isExpanded: true,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      icon: const Icon(Icons.arrow_right),
                      focusColor: const Color.fromARGB(255, 255, 255, 255),
                      value: profilevalue,
                      underline: const Text(""),
                      items: menuItems,
                      onChanged: (value) {},
                    ),
                  )
                ],
              )
            ],
            leadingWidth: 200,
            backgroundColor: Colors.white),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 172, 172, 172),
                      offset: Offset(5, 0),
                      blurRadius: 1.0),
                  BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      offset: Offset(-3, 0),
                      blurRadius: 1.0),
                  BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      offset: Offset(5, 0),
                      blurRadius: 1.0)
                ],
              ),
              width: 200,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Menu(
                      index: index,
                      rerender: (int idx) {
                        print("web");
                        Menu(
                          index: idx,
                        );
                        setState(() {
                          data = "okkkk done";
                        });
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 20),
              child: Text(data),
            )
          ],
        ),
      ),
    );
  }
}
