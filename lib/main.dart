import 'package:flutter/material.dart';
import 'helper/nav_drawer.dart';
import 'package:lsl_web/pages/main_page.dart';

void main() => runApp(const App(key: Key("MyApp")));

class GlobalContextService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

class App extends StatelessWidget {
  /// Creates an [App].
  const App({Key? key}) : super(key: key);

  /// The title of the app.
  static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainPage());
  }
}

class ErrorScreen extends StatelessWidget {
  final Exception? error;
  const ErrorScreen({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: Center(
        child: Text(error.toString()),
      ),
    );
  }
}
