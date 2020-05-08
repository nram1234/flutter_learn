import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(top: true,
      child: Container(
        color: primaryGreen,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text('9999999999'),
            ),
            Positioned(left: 5.0,top: MediaQuery.of(context).size.height*.45,
              child: Column(
                children: <Widget>[
                  ListTile(title: Text('oooooo'),leading: Icon(Icons.flag),),
                  Text('8888'),
                  Text('8888'),
                  Text('8888')
                ],
              ),

            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('9999999999'),
            ),
          ],
        ),
      ),
    );
  }
}
