import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:lsl_web/gallary.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});
  @override
  State<SideMenu> createState() => _SideMenuState();
}

List<bool> selectedIcon = [true, false, false, false, false];

class _SideMenuState extends State<SideMenu> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  List<IconData> icon = [
    Feather.home,
    Feather.image,
    Feather.compass,
    Feather.info,
    Feather.mail
  ];

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i == n) {
        selectedIcon[i] = true;
      } else {
        selectedIcon[i] = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //replace with scafold when drawer doesnt needed
      width: 130.0,
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: Stack(
        children: [
          Container(color: Colors.white),
          Container(
            margin: const EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height,
            width: 101.0,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(20.0)),
            child: Stack(
              children: [
                Positioned(
                    top: 110,
                    child: Column(
                      children: icon
                          .map((e) => NavbarItem(
                              icon: e,
                              selected: selectedIcon[icon.indexOf(e)],
                              onTap: () {
                                setState(() {
                                  select(icon.indexOf(e));
                                  if (e == Feather.image) {
                                    Navigator.pushNamed(context, "/gallary");
                                  }
                                });
                              }))
                          .toList(),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NavbarItem extends StatefulWidget {
  final IconData icon;
  final Function onTap;
  final bool selected;

  const NavbarItem({
    super.key,
    required this.selected,
    required this.icon,
    required this.onTap,
  });
  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;

  late Animation<double> _anim1;
  late Animation<double> _anim2;
  late Animation<double> _anim3;
  late Animation<Color?> _color;

  bool hovered = false;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 50));
    _controller2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 75));
    _anim1 = Tween(begin: 101.0, end: 75.0).animate(_controller1);
    _anim2 = Tween(begin: 101.0, end: 25.0).animate(_controller2);
    _anim3 = Tween(begin: 101.0, end: 50.0).animate(_controller2);
    _color = ColorTween(end: Colors.red[700], begin: Colors.white)
        .animate(_controller2);

    _controller1.addListener(() {
      setState(() {});
    });
    _controller2.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(NavbarItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.selected) {
      Future.delayed(const Duration(milliseconds: 10), () {
        //_controller1.reverse();
      });
      _controller1.reverse();
      _controller2.reverse();
    } else {
      _controller1.forward();
      _controller2.forward();
      Future.delayed(const Duration(milliseconds: 10), () {
        //_controller2.forward();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (() {
          widget.onTap();
        }),
        child: MouseRegion(
          onEnter: (Value) {
            setState(() {
              hovered = true;
            });
          },
          onExit: (Value) {
            setState(() {
              hovered = false;
            });
          },
          child: Container(
            width: 101.0,
            color: hovered && !widget.selected
                ? Colors.white12
                : Colors.transparent,
            child: Stack(
              children: [
                Positioned(
                  child: CustomPaint(
                    painter: CurvePainter(
                      value1: 0,
                      animValue1: _anim3.value,
                      animValue2: _anim2.value,
                      animValue3: _anim1.value,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.0,
                  width: 101.0,
                  child: Center(
                    child: Icon(widget.icon, color: _color.value, size: 18.0),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class CurvePainter extends CustomPainter {
  double value1;
  late double animValue1;
  late double animValue2;
  late double animValue3;

  CurvePainter(
      {required this.value1,
      required this.animValue1,
      required this.animValue2,
      required this.animValue3});

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.moveTo(101, value1);
    path.quadraticBezierTo(101, value1 + 20, animValue3,
        value1 + 20); // have to use animValue3 for x2
    path.lineTo(animValue1, value1 + 20); // have to use animValue1 for x
    path.quadraticBezierTo(animValue2, value1 + 20, animValue2,
        value1 + 40); // animValue2 = 25 // have to use animValue2 for both x
    path.lineTo(101, value1 + 40);
    path.close();

    path.moveTo(101, value1 + 80);
    path.quadraticBezierTo(101, value1 + 60, animValue3, value1 + 60);
    path.lineTo(animValue1, value1 + 60);
    path.quadraticBezierTo(animValue2, value1 + 60, animValue2, value1 + 40);
    path.lineTo(101, value1 + 40);
    path.close();
    paint.color = Colors.white;
    paint.strokeWidth = 101.0;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
