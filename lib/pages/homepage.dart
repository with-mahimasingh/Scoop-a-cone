
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_basics/models/icecreams.dart';
import 'package:flutter_basics/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_basics/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_basics/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final int days=30;
      @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    //gives list of items from productsData
    IceCreamModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item)) 
        .toList();//list mapped to list of items
    setState(() {});
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        body: SafeArea( //safe area: below battery line and above the below buttons as on phone
          child: Container(
            padding: Vx.m32, //from all side x ht.
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (IceCreamModel.items != null && IceCreamModel.items.isNotEmpty)
                  CatalogList().expand() 
                else
                  Center(
                    child: CircularProgressIndicator().centered().expand(),
                  )
              ],
            ),
          ),
        ));
  }
}



