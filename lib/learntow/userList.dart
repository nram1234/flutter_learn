import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 100; i++) {
      list.add("value  $i");
    }
    return Scaffold(
        body: //crossAxisCount: (orientation==Orientation.portrait)?2:3)
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),itemCount: list.length,
                itemBuilder: (context, pos) {return Card(child: Text("data  $pos"),);}));
  }
}
