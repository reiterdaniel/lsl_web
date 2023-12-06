import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'my_nav_drawer.dart';
import '../helper/standard_scafold.dart';

class MyTextBox extends StatefulWidget {
  const MyTextBox(
      {super.key, this.image, required this.text, required this.header});
  final Image? image;
  final String text;
  final String header;
  @override
  State<MyTextBox> createState() => _MyTextBoxState();
}

class _MyTextBoxState extends State<MyTextBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.header,
          style: const TextStyle(fontSize: 16.0),
        ),
        widget.image ?? Container(),
        Text(
          widget.text,
          style: const TextStyle(fontSize: 12.0),
        )
      ],
    );
  }
}
