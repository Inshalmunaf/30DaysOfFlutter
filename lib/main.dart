import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: LoginPage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(
            primarySwatch: Colors.purple,
            fontFamily: GoogleFonts.lato().fontFamily),
        darkTheme: ThemeData(primarySwatch: Colors.orange),
        // initialRoute: "/home",
        routes: {
          "/": (context) => new LoginPage(),
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage()
        });
  }
}
