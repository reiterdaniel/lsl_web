import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'helper/nav_drawer.dart';
import 'package:lsl_web/pages/main_page.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const App(key: Key("MyApp")));
}

class GlobalContextService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

class App extends StatelessWidget {
  /// Creates an [App].
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      theme: ThemeData(
          backgroundColor: Colors.green,
          textTheme: TextTheme(
            titleLarge: GoogleFonts.orbitron(),
            bodyLarge: GoogleFonts.orbitron(),
            bodyMedium: GoogleFonts.orbitron(),
            bodySmall: GoogleFonts.orbitron(),
            /*bodyText1: GoogleFonts.orbitron(),
        bodyText2: GoogleFonts.orbitron(),
        caption: GoogleFonts.orbitron(),
        button: GoogleFonts.orbitron(),
        labelLarge: GoogleFonts.orbitron(),
        labelMedium: GoogleFonts.orbitron(),
        labelSmall: GoogleFonts.orbitron(),*/
          )),
    );
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
