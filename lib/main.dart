import 'package:flutter/material.dart';
import 'package:lsl_web/home.dart';
import 'package:lsl_web/menu.dart';
import 'package:lsl_web/gallary.dart';
import 'package:go_router/go_router.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();

  /// Creates an [App].
  App({Key? key}) : super(key: key);

  /// The title of the app.
  static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StartPage());
  }
}

// ignore: must_be_immutable
class StartPage extends StatelessWidget {
  StartPage({super.key});

  late var shownSideMenu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor:
          Colors.transparent, //removes shadow from expanding side menu
      extendBodyBehindAppBar: true,
      drawer: const SideMenu(),
      appBar: AppBar(
        foregroundColor: Colors.amberAccent,
        surfaceTintColor: Colors.amber,
        //leading: const Icon(Feather.menu, color: Colors.amberAccent),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
    );
  }
}

class Start extends StatelessWidget {
  Start({super.key});
  final GoRouter _router = GoRouter(
    errorBuilder: (context, state) => ErrorScreen(error: state.error),
    routes: <GoRoute>[
      GoRoute(
        routes: <GoRoute>[
          GoRoute(
            path: 'gallary',
            builder: (BuildContext context, GoRouterState state) =>
                const Gallary(),
          ),
        ],
        path: '/',
        builder: (BuildContext context, GoRouterState state) => StartPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
      );
}

class ErrorScreen extends StatelessWidget {
  final Exception? error;
  const ErrorScreen({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Center(
        child: Text(error.toString()),
      ),
    );
  }
}

class GlobalContextService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

class OverlayTest extends StatefulWidget {
  const OverlayTest({super.key});

  @override
  State<OverlayTest> createState() => _OverlayTestState();
}

class _OverlayTestState extends State<OverlayTest> {
  AnimationController? animationController;
  List animation = [];
  List icons = [Icons.home, Icons.settings, Icons.location_city];
  List colors = [Colors.green, Colors.blueGrey, Colors.purple];
  OverlayEntry? overlayEntry;
  GlobalKey globalKey = GlobalKey();

  _showOverLay() async {
    RenderBox? renderBox =
        globalKey.currentContext!.findRenderObject() as RenderBox?;
    Offset offset = renderBox!.localToGlobal(Offset.zero);

    OverlayState? overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        bottom: renderBox.size.height + 16,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < animation.length; i++)
              ScaleTransition(
                scale: animation[i],
                child: FloatingActionButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Icon Button Pressed');
                  },
                  backgroundColor: colors[i],
                  mini: true,
                  child: Icon(
                    icons[i],
                  ),
                ),
              )
          ],
        ),
      ),
    );
    animationController!.addListener(() {
      overlayState!.setState(() {});
    });
    animationController!.forward();
    overlayState!.insert(overlayEntry!);

    await Future.delayed(const Duration(seconds: 5))
        .whenComplete(() => animationController!.reverse())
        .whenComplete(() => overlayEntry!.remove());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Overlay'),
      ),
      floatingActionButton: FloatingActionButton(
        key: globalKey,
        onPressed: _showOverLay,
        child: const Icon(Icons.add),
      ),
    );
  }
}
