import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OwnAppbar extends StatelessWidget {
  const OwnAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(120), // Set this height
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
              Expanded(child: Container()),
              const Text(
                'LackierServiceList',
                //style: GoogleFonts.orbitron(),
              ),
              Image.asset('images/lackierPistole.png', scale: 3.5)
            ]),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
