//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lsl_web/my_appbar.dart';
import 'package:lsl_web/menuItem_button_style.dart';

//import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold.of(context).openDrawer();
    return Scaffold(
      appBar: MyAppbar().ownAppbar(context),
      body: Container(),
    );
    /*Scaffold(
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
