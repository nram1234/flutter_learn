import 'package:flutter/material.dart';

import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      child: Stack(
        children: <Widget>[
         Align( alignment: Alignment.topLeft,child: Text('9999999999'),), Align(
            child: ListView(
              children: <Widget>[Text('8888'),Text('8888'),Text('8888'),Text('8888')],
            ),
            alignment: Alignment.centerLeft,
          )
       ,   Align( alignment: Alignment.bottomLeft,child: Text('9999999999'),), ],
      ),
    );
  }
}
