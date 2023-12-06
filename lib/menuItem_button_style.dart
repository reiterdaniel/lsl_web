import 'package:flutter/material.dart';

class MenuItemButtonStyle {
  static final ButtonStyle menuItemButtonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          return Colors.white; // Use the component's default.
        },
      ),
      fixedSize: MaterialStateProperty.resolveWith<Size?>(
        (Set<MaterialState> states) {
          return const Size(120, 50); // Use the component's default.
        },
      ),
      alignment: Alignment.center);

  static final ButtonStyle menuItemButtonStyleHover = ButtonStyle(
      iconSize: MaterialStateProperty.resolveWith<double?>(
        (Set<MaterialState> states) {
          return 30; // Use the component's default.
        },
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          return Colors.white; // Use the component's default.
        },
      ),
      iconColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          return Colors.red; // Use the component's default.
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          return Colors.red; // Use the component's default.
        },
      ),
      elevation: MaterialStateProperty.resolveWith<double?>(
        (Set<MaterialState> states) {
          return 40.0; // Use the component's default.
        },
      ),
      alignment: Alignment.center);
}
