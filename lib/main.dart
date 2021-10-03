import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/explore.dart';
import 'package:flutter_basics/pages/homepage.dart';
import 'package:flutter_basics/pages/login.dart';
import 'package:flutter_basics/utils/routes.dart';
import 'package:flutter_basics/widgets/themes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      //home:HomePage(),
      themeMode:ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      routes: {
        "/": (context)=>HomePage(),
        //using routes here as we made them staic so it will be easier to navigate
        MyRoutes.loginRoute:(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.exploreRoute:(context)=>ExplorePage()

      },
    );
  }
}
