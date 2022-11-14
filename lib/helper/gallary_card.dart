import 'fullscreen.dart';
import 'package:flutter/material.dart';

Widget myGallaryCard(String picture, BuildContext context) {
  return Card(
      color: Colors.redAccent,
      margin: const EdgeInsets.all(10.0),
      shadowColor: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    color: Colors.redAccent.shade100),
                child: ImageFullScreenWrapperWidget(
                    dark: true,
                    child: Image.asset(picture, alignment: Alignment.center,
                        frameBuilder: (BuildContext context, Widget child,
                            int? frame, bool wasSynchronouslyLoaded) {
                      if (wasSynchronouslyLoaded) {
                        return child;
                      }
                      return AnimatedOpacity(
                        opacity: frame == null ? 0 : 1,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeOut,
                        child: child,
                      );
                    }, scale: 2.0)),
              )),
          /*const Flexible(
              flex: 1,
              child: Text(
                "tesdsgfafassddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddt",
                style: TextStyle(),
              ))*/
        ],
      ));
}
