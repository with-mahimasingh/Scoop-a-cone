import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/explore_bg.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Text("Welcome to Scope a Cone",
            style: TextStyle(
              fontSize: 16,
              fontWeight:FontWeight.bold,
            ),
            )
            
          ],
         
        ),
      ),
    );
  }
}