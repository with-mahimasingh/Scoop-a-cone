import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
    static ThemeData  lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        ));

      static ThemeData  darkTheme(BuildContext context) => ThemeData(
       brightness: Brightness.dark,
      );
    
  //Colors
  static Color creamColor = Color(0xffe0f7fa);
  static Color darkBluishColor = Color(0xff006064);
}