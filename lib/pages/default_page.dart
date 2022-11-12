//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../helper/nav_drawer.dart';
import '../helper/standard_scafold.dart';
//import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold.of(context).openDrawer();
    return myScaffold(
        const NavigationDrawer(selectedIcon: [false, false, true, true, true]),
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
