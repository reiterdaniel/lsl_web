import 'package:flutter/material.dart';
import 'package:lsl_web/home.dart';
import 'package:lsl_web/menu.dart';
import 'package:lsl_web/gallary.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  /// Creates an [App].
  App({Key? key}) : super(key: key);

  /// The title of the app.
  static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: _router,
        title: title,
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const Home(),
        routes: <GoRoute>[
          GoRoute(
            path: 'page2',
            builder: (BuildContext context, GoRouterState state) =>
                const Gallary(),
          ),
        ],
      ),
    ],
  );
}

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const Home(key: Key("Home")),
        routes: <GoRoute>[
          GoRoute(
            path: 'gallary',
            builder: (BuildContext context, GoRouterState state) =>
                const Gallary(key: Key("Gallary")),
          ),
        ],
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SideMenu(),
    );
  }
}
