import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'customTextField.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  TextEditingController _usernameController = TextEditingController();

  TextEditingController _userphonController = TextEditingController();

  TextEditingController _useraddresController = TextEditingController();

  TextEditingController _DescribeController = TextEditingController();

  List i = List.generate(10, (pos) {
    "$pos";
  });
  int ppp = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, pos) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  ppp = pos;
                  setState(() {});
                },
                child: pos == ppp
                    ? Container(
                        height: 100,
                        child: ColorFiltered(
                          child: Image.asset(
                            'images/Afghanistan.png',
                          ) ,colorFilter: ColorFilter.mode(Colors.grey, BlendMode.hue),
                        ),
                      )
                    : Container(
                        height: 100,

                        child: Image.asset('images/Afghanistan.png'),
                      ),
              ),
            );
          },
          itemCount: 10,
        ),
        top: true,
      ),
    );
  }

  Widget Mysavebuton(String lab, context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * .5,
      child: Center(child: Text(lab)),
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

  Widget MyIconDesin() {
    return Container(
      height: 300,
      width: 300,
      child: CircleAvatar(
          backgroundImage: AssetImage(
        'images/Afghanistan.png',
      )),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(200)),
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
}
