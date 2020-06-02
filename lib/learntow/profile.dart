import 'package:flutter/material.dart';

import 'customTextField.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const  EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(top: true,
          child: SingleChildScrollView(
            child: Form(
              child: Column(children: <Widget>[
                MyIconDesin(Icons.image, context),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(20))),
                      prefixIcon: Icon(Icons.alternate_email),
                      hintText: "you@example.com",
                      labelText: "Email"),)
           ,Padding(
             padding: const EdgeInsets.all(16.0),
             child: CustomTextField(hint: 'myname',icon: Icons.image,obscureText: false,),
           )   ],),
            ),
          ),
        ),
      ),
    );
  }

  Widget MyIconDesin(IconData iconData, context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Container(
          height: 100,
          width: 100,
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
        ),
      ),
    );
  }
}
