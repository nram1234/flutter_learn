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
    return SafeArea(
      top: true,
      child: Container(
        color: primaryGreen,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text('9999999999'),
            ),
            Positioned(
              left: 10.0,
              top: MediaQuery.of(context).size.height * .45,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.flag),
                      SizedBox(
                        width: 10,
                      ),
                      Text('9999999999',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.flag),
                      SizedBox(
                        width: 10,
                      ),
                      Text('9999999999',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.flag),
                      SizedBox(
                        width: 10,
                      ),
                      Text('9999999999',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.flag,color: Colors.white,),
                      SizedBox(
                        width: 10,
                      ),
                      Text('9999999999',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.flag),
                      SizedBox(
                        width: 10,
                      ),
                      Text('9999999999',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('9999999999',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
