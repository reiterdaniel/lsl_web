//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../helper/nav_drawer.dart';
import '../helper/standard_scafold.dart';
//import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MailPage extends StatefulWidget {
  const MailPage({super.key});

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold.of(context).openDrawer();
    return myScaffold(
        const NavigationDrawer(
            selectedIcon: [false, false, false, false, true]),
        null,
        context); /*Scaffold(
      drawerDragStartBehavior: DragStartBehavior.down,
      backgroundColor: Colors.transparent,
      drawerScrimColor: Colors.transparent,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        foregroundColor: Colors.red,
        surfaceTintColor: Colors.amber,
        elevation: 0.0,
        backgroundColor: Colors.deepOrangeAccent,

        //removes shadow from expanding side menu
      ),
      drawer: const NavigationDrawer(index: 0),
    );*/
  }
}
