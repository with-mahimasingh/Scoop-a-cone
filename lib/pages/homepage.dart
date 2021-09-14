
import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/drawer.dart';

class HomePage extends StatelessWidget {
    final int days=30;
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
       title: Text('Scoope A Cone'),
       ),
        body: Center(
          child:Container(
      child: Text('Learning Flutter Day: $days'),
          )
        ),
        drawer: MyDrawer(),
    );
  }
}