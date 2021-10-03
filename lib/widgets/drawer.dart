import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl ="https://static.wikia.nocookie.net/fairypirates/images/6/66/Tony_Tony_Chopper.png/revision/latest/scale-to-width-down/886?cb=20161022095115";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
        
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            
              accountName: Text('Tony Tony Chopper'),
              accountEmail: Text('cottoncandy@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color:Colors.white)),
            ) ,
            ListTile(
              leading: Icon(CupertinoIcons.phone, color: Colors.white,),
              title: Text("Contact",textScaleFactor: 1.2,style: TextStyle(color:Colors.white)),
            ) ,
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text("Email",textScaleFactor: 1.2,style: TextStyle(color:Colors.white)),
            ) 
          ],
        ),
      ),
      
    );
  }
}