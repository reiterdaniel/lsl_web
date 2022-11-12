import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../helper/nav_drawer.dart';
//import 'package:flutter_vector_icons/flutter_vector_icons.dart';

Widget myScaffold(
    NavigationDrawer myDrawer, Widget? myBody, BuildContext context) {
  myBody ??= const Center(child: Text("No Content at the moment"));
  return Scaffold(
    drawerDragStartBehavior: DragStartBehavior.down,
    backgroundColor: Colors.amber,
    drawerScrimColor: Colors.transparent,
    appBar: AppBar(
      toolbarHeight: 100.0,
      shadowColor: Colors.transparent,
      foregroundColor: Colors.yellowAccent,
      surfaceTintColor: Colors.amber,
      elevation: 0.0,
      backgroundColor: Colors.redAccent,
      title: Row(children: [
        Expanded(child: Container()),
        Text(
          'LackierServiceList',
          //style: GoogleFonts.orbitron(),
        ),
        Image.asset('images/lackierPistole.png', scale: 2.0)
      ]),

      //removes shadow from expanding side menu
    ),
    drawer: myDrawer,
    body: myBody,
  );
}
