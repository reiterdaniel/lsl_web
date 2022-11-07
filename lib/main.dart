import 'package:flutter/material.dart';
import 'package:lsl_web/home.dart';
import 'package:lsl_web/menu.dart';
import 'package:lsl_web/gallary.dart';
import 'package:go_router/go_router.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(App(key: const Key("MyApp")));

class GlobalContextService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

class App extends StatelessWidget {
  /// Creates an [App].
  App({Key? key}) : super(key: key);

  /// The title of the app.
  static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: GlobalContextService.navigatorKey,
        initialRoute: "/",
        routes: {
          //"/": (context) => StartPage(key: key),
          "/gallary": (context) => Gallary(key: key)
        },
        home: StartPage(key: key),
        builder: (context, child) {
          if (child == null) {
            return Overlay(initialEntries: [
              OverlayEntry(
                  builder: ((context) => const LayoutTemplate(
                      child: ErrorScreen(error: FormatException()))))
            ]);
          } else {
            return Overlay(initialEntries: [
              OverlayEntry(builder: ((context) => SideMenu()))
            ]);
          }
        });
  }
}

class LayoutTemplate extends StatelessWidget {
  final Widget child;

  const LayoutTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor:
          Colors.transparent, //removes shadow from expanding side menu
      //extendBodyBehindAppBar: true,
      drawer: SideMenu(key: GlobalContextService.navigatorKey),
      appBar: AppBar(
        foregroundColor: Colors.amberAccent,
        surfaceTintColor: Colors.amber,
        //leading: const Icon(Feather.menu, color: Colors.amberAccent),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          //NavigationBar(),
          Expanded(child: child)
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor:
          Colors.transparent, //removes shadow from expanding side menu
      //extendBodyBehindAppBar: true,
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

/*class Start extends StatelessWidget {
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
}*/

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
