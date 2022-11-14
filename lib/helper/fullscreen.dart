import 'package:flutter/material.dart';

class ImageFullScreenWrapperWidget extends StatelessWidget {
  final Image child;
  final bool dark;

  const ImageFullScreenWrapperWidget({
    super.key,
    required this.child,
    this.dark = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            opaque: false,
            barrierColor: dark ? Colors.black : Colors.white,
            pageBuilder: (BuildContext context, _, __) {
              return FullScreenPage(
                dark: dark,
                child: child,
              );
            },
          ),
        );
      },
      child: child,
    );
  }
}

class FullScreenPage extends StatefulWidget {
  const FullScreenPage({
    super.key,
    required this.child,
    required this.dark,
  });

  final Image child;
  final bool dark;

  @override
  // ignore: library_private_types_in_public_api
  _FullScreenPageState createState() => _FullScreenPageState();
}

class _FullScreenPageState extends State<FullScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.dark ? Colors.black12 : Colors.white12,
      body: Stack(
        children: [
          Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 333),
                curve: Curves.fastOutSlowIn,
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: InteractiveViewer(
                  panEnabled: true,
                  minScale: 0.5,
                  maxScale: 4,
                  child: widget.child,
                ),
              ),
            ],
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: MaterialButton(
                padding: const EdgeInsets.all(15.0),
                elevation: 0,
                color: widget.dark ? Colors.black12 : Colors.white70,
                highlightElevation: 0,
                minWidth: double.minPositive,
                height: double.minPositive,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: Icon(
                  Icons.close,
                  color: widget.dark ? Colors.white : Colors.black,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
