import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/explore.dart';
import 'package:flutter_basics/pages/homepage.dart';
import 'package:flutter_basics/pages/login.dart';
import 'package:flutter_basics/utils/routes.dart';
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
        //using routes here as we made them staic so it will be easier to navigate
        MyRoutes.loginRoute:(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.exploreRoute:(context)=>ExplorePage()

      },
    );
  }
}
