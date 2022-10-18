import 'package:flutter/material.dart';
import 'package:lsl_web/home.dart';
import 'package:lsl_web/menu.dart';
import 'package:lsl_web/gallary.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(Start());

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();

  /// Creates an [App].
  App({Key? key}) : super(key: key);

  /// The title of the app.
  static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SideMenu(),
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
        builder: (BuildContext context, GoRouterState state) =>
            const MainPage(),
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
