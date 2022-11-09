import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:lsl_web/helper/menu.dart';
import 'package:lsl_web/pages/gallary_page.dart';
import 'package:lsl_web/pages/main_page.dart';

class NavigationDrawer extends StatefulWidget {
  final List<bool> selectedIcon;
  const NavigationDrawer({required this.selectedIcon, super.key});

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  //List<bool> selectedIcon = [false, false, false, false, false];

  List<IconData> icon = [
    Feather.home,
    Feather.image,
    Feather.compass,
    Feather.info,
    Feather.mail
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      width: 140.0,
      elevation: 0.0,
      child: Stack(
        children: [
          Container(color: Colors.transparent),
          Container(
            margin: const EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height,
            width: 101.0,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(20.0)),
            child: Stack(
              children: [
                Positioned(
                    top: 110,
                    child: Column(
                      children: icon
                          .map((e) => NavbarItem(
                              icon: e,
                              selected: widget.selectedIcon[icon.indexOf(e)],
                              onTap: () {
                                setState(() {
                                  if (icon.indexOf(e) == 0) {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                const MainPage())));
                                  } else if (icon.indexOf(e) == 1) {
                                    Navigator.pop(context);
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                const Gallary())));
                                  }
                                  //selectCurrentScreen(icon.indexOf(e));
                                });
                              }))
                          .toList(),
                    ))
              ],
            ),
          ) /*,
              Container(
                //width: 899.0,
                //alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(left: 110.0),
                //child: currentScreen,
              )*/
        ],
      ),
    );
  }
}
