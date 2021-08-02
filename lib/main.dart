import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/homepage.dart';
import 'package:flutter_basics/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      //home:HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //GoogleFonts
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context)=>LoginPage(),
        "/home":(context)=>HomePage()
      },
    );
  }
}
