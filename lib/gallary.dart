import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:lsl_web/menu.dart';

class Gallary extends StatelessWidget {
  const Gallary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*backgroundColor: Colors.white,
        drawerScrimColor:
            Colors.transparent, //removes shadow from expanding side menu
        //extendBodyBehindAppBar: true,
        drawer: const SideMenu(),
        appBar: AppBar(
          foregroundColor: Colors.amberAccent,
          surfaceTintColor: Colors.amber,
          //leading: const Icon(Feather.menu, color: Colors.amberAccent),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),*/
        body: GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      primary: false,
      children: <Widget>[
        Container(
          child: const Image(image: AssetImage("../graphics/test1.jpg")),
        )
      ],
    ));
  }
}
