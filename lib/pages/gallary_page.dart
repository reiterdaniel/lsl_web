import 'package:flutter/material.dart';
import 'package:lsl_web/helper/standard_scafold.dart';
import '../helper/my_nav_drawer.dart';
import '../helper/gallary_card.dart';

class Gallary extends StatelessWidget {
  const Gallary({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: MediaQuery.of(context).size.width > 900 ? 5 : 3,
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
    );
  }
}
