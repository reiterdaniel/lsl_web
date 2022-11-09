import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../helper/nav_drawer.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

Widget MyScafold(NavigationDrawer myDrawer, Widget? myBody) {
  if (myBody == null) {
    myBody = Container(child: Text("No Content at the moment"));
  }
  return Scaffold(
    drawerDragStartBehavior: DragStartBehavior.down,
    backgroundColor: Colors.transparent,
    drawerScrimColor: Colors.transparent,
    appBar: AppBar(
      toolbarHeight: 100.0,
      shadowColor: Colors.transparent,
      foregroundColor: Colors.amber,
      surfaceTintColor: Colors.amber,
      elevation: 0.0,
      backgroundColor: Colors.deepOrangeAccent,

      //removes shadow from expanding side menu
    ),
    drawer: myDrawer,
    body: myBody,
  );
}
