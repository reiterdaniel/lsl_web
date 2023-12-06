import 'package:flutter/material.dart';
import 'package:lsl_web/menuItem_button_style.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MyAppbar {
  ButtonStyle homeButton = MenuItemButtonStyle.menuItemButtonStyle;
  ButtonStyle infoButton = MenuItemButtonStyle.menuItemButtonStyle;
  ButtonStyle cardButton = MenuItemButtonStyle.menuItemButtonStyle;
  ButtonStyle contactButton = MenuItemButtonStyle.menuItemButtonStyle;
  ButtonStyle galleryButton = MenuItemButtonStyle.menuItemButtonStyle;

  PreferredSize? ownAppbar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(120), // Set this height
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
              Expanded(child: Container()),
              const Text(
                'LackierServiceList',
                style: TextStyle(fontWeight: FontWeight.w600),
                //style: GoogleFonts.orbitron(),
              ),
              Image.asset('images/lackierPistole.png', scale: 3.5)
            ]),
            Align(
              alignment: Alignment.centerLeft,
              child: MenuBar(
                style: MenuStyle(
                    fixedSize: MaterialStateProperty.resolveWith<Size?>(
                  (Set<MaterialState> states) {
                    return Size(MediaQuery.of(context).size.width,
                        60); // Use the component's default.
                  },
                ), padding: MaterialStateProperty.resolveWith<EdgeInsets?>(
                  (Set<MaterialState> states) {
                    return const EdgeInsets.symmetric(
                        horizontal: 5.0,
                        vertical: 5.0); // Use the component's default.
                  },
                ), backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    return Colors.black54; // Use the component's default.
                  },
                )),
                children: [
                  MenuItemButton(
                      leadingIcon: const Icon(Feather.home),
                      style: homeButton,
                      onHover: (value) {
                        if (value) {
                          homeButton =
                              MenuItemButtonStyle.menuItemButtonStyleHover;
                        } else {
                          homeButton = MenuItemButtonStyle.menuItemButtonStyle;
                        }
                      },
                      onPressed: () {},
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [Text('Home')],
                        ),
                      )),
                  MenuItemButton(
                      leadingIcon: const Icon(Feather.image),
                      style: galleryButton,
                      onHover: (value) {},
                      onPressed: () {},
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [Text('Galerie')],
                        ),
                      )),
                  MenuItemButton(
                      leadingIcon: const Icon(Feather.info),
                      style: infoButton,
                      onPressed: () {},
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [Text('Info')],
                        ),
                      )),
                  MenuItemButton(
                      leadingIcon: const Icon(Feather.map),
                      style: cardButton,
                      onPressed: () {},
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [Text('Anfahrt')],
                        ),
                      )),
                  MenuItemButton(
                      leadingIcon: const Icon(Feather.mail),
                      style: contactButton,
                      onPressed: () {},
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [Text('Kontakt')],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
