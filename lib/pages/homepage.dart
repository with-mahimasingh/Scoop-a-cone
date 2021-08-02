
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    final int days=30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
       title: Text('Catalogue App'),
       ),
        body: Center(
          child:Container(
      child: Text('Learning Flutter Day: $days'),
          )
        ),
        drawer: Drawer(),
    );
  }
}