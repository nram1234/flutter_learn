import 'package:flutter/material.dart';

class TrymanyWidget extends StatefulWidget {
  @override
  _TrymanyWidgetState createState() => _TrymanyWidgetState();
}
//
//{ 'Japan': 'images/Japan.png',
//'Mongolia': 'images/Mongolia.png',
//'North Korea': 'images/North_Korea.png',
//'Sri_Lanka': 'images/Sri_Lanka.png',};

class _TrymanyWidgetState extends State<TrymanyWidget> {
  List<Flagname> list = [
    Flagname('Japan', 'images/Japan.png'),
    Flagname('Mongolia', 'images/Mongolia.png'),
    Flagname('North Korea', 'images/North_Korea.png'),
    Flagname('Sri Lanka', 'images/Sri_Lanka.png'),
    Flagname('Afghanistan', 'images/Afghanistan.png')
  ];
  Flagname _flagname;

  String dropdownValue = 'One';
  List i = [];

  @override
  Widget build(BuildContext context) {
    for (int o = 0; o < 100; o++) {
      i.add(o.toString());
    }
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            DropdownButton(
              hint: Text('select your'),
              elevation: 5,
              icon: Icon(
                Icons.add,
              ),
              value: _flagname,
              itemHeight: 100,
              items: list.map((e) {
                return DropdownMenuItem<Flagname>(
                  value: e,
                  child: Wrap(
                    children: <Widget>[
                      Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            e.path,
                            fit: BoxFit.fill,
                          )),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(e.name),
                      ))
                    ],
                  ),
                );
              }).toList(),
              onChanged: (v) {
                setState(() {
                  _flagname = v;
                });
              },
            ),
            MyIconDesin(Icons.ac_unit),
             Container(height: 400,
               child: ListView.builder(shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, pos) {
                      return itemListWidget();
                    }),
             ),

          ],
        ),

//
//        DropdownButton<String>(
//          value: dropdownValue,
//          icon: Icon(Icons.arrow_downward),
//          iconSize: 24,
//          elevation: 16,
//          style: TextStyle(
//              color: Colors.deepPurple
//          ),
//          underline: Container(
//            height: 2,
//            color: Colors.deepPurpleAccent,
//          ),
//          onChanged: (String newValue) {
//            setState(() {
//              dropdownValue = newValue;
//            });
//          },
//          items: <String>['One', 'Two', 'Free', 'Four']
//              .map<DropdownMenuItem<String>>((String value) {
//            return DropdownMenuItem<String>(
//              value: value,
//              child: Text(value),
//            );
//          })
//              .toList(),
//        )
      ),
    );
  }

  Widget MyIconDesin(IconData iconData) {
    return Container(
      height: 60,
      width: 60,
      child: Icon(
        iconData,
        size: 55,
      ),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[500],
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ]),
    );
  }

  Widget itemListWidget() {
    return Container(height: 250,width: 250,
        child: Stack(
      children: <Widget>[Positioned(
        bottom: 0,
        child: Container(width: 500,
          height: 200,color: Colors.amberAccent,

        ),
      ),
        Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: 50,
            )),

      ],
    ));
  }
}

class Flagname {
  String name;
  String path;

  Flagname(this.name, this.path);
}
