import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../helper/nav_drawer.dart';
import '../helper/standard_scafold.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold.of(context).openDrawer();
    return MyScafold(
        const NavigationDrawer(
            selectedIcon: [true, false, false, false, false]),
        null); /*Scaffold(
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
