
import 'package:flutter/material.dart';
import 'package:flutter_basics/models/icecreams.dart';
import 'package:flutter_basics/widgets/drawer.dart';
import 'package:flutter_basics/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
    final int days=30;
    
  @override
  Widget build(BuildContext context) {
    
    final dummyList = List.generate(6, (index) => IceCreamModel.items[0]);
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
       title: Text('Scoope A Cone'),
       ),
       body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
        drawer: MyDrawer(),
    );
  }
}