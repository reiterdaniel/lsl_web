import 'package:flutter/material.dart';
import 'package:lsl_web/helper/standard_scafold.dart';
import '../helper/nav_drawer.dart';
import '../helper/gallary_card.dart';
import '../helper/standard_scafold.dart';

class Gallary extends StatelessWidget {
  const Gallary({super.key});

  @override
  Widget build(BuildContext context) {
    return myScaffold(
        const NavigationDrawer(
            selectedIcon: [false, true, false, false, false]),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          primary: false,
          children: <Widget>[
            myGallaryCard('images/test4.jpeg', context),
            myGallaryCard('images/test5.jpeg', context),
            myGallaryCard('images/test6.jpeg', context),
            myGallaryCard('images/test7.jpeg', context),
            myGallaryCard('images/test8.jpeg', context),
            myGallaryCard('images/test9.jpeg', context),
            myGallaryCard('images/test10.jpeg', context),
            myGallaryCard('images/test11.jpeg', context),
            myGallaryCard('images/test12.jpeg', context),
            myGallaryCard('images/test13.jpeg', context),
            myGallaryCard('images/test14.jpeg', context),
            myGallaryCard('images/test15.jpeg', context),
            myGallaryCard('images/test16.jpeg', context),
            myGallaryCard('images/test17.jpeg', context),
            myGallaryCard('images/test18.jpeg', context),
            myGallaryCard('images/test19.jpeg', context),
            myGallaryCard('images/test20.jpeg', context),
            myGallaryCard('images/test21.jpeg', context),
          ],
        ),
        context); /*Scaffold(
      backgroundColor: Colors.transparent,
      drawerScrimColor: Colors.transparent,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        foregroundColor: Colors.red,
        surfaceTintColor: Colors.amber,
        //leading: const Icon(Feather.menu, color: Colors.amberAccent),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        //removes shadow from expanding side menu
      ),
      drawer: const NavigationDrawer(index: 1),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        primary: false,
        children: <Widget>[
          Image.asset('images/test10.jpeg'),
          Image.asset('images/test11.jpeg'),
          Image.asset('images/test12.jpeg'),
          Image.asset('images/test13.jpeg'),
          Image.asset('images/test14.jpeg'),
          Image.asset('images/test15.jpeg'),
          Image.asset('images/test16.jpeg'),
          Image.asset('images/test17.jpeg'),
          Image.asset('images/test18.jpeg'),
          Image.asset('images/test19.jpeg'),
        ],
      ),
    );*/
  }
}
