import 'package:flutter/material.dart';
import 'package:flutterlearn/trymanyWidget.dart';
import 'package:flutterlearn/userdatatype.dart';

import 'animating.dart';
import 'databaseHelper.dart';
import 'learntow/drawerScreen.dart';
import 'learntow/homeScreen.dart';
import 'learntow/newScrol.dart';
import 'learntow/newpro.dart';
import 'learntow/profile.dart';
import 'learntow/userList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:NewListScrol()// MyHomePage(title: 'Flutter Demo Home Page')//UserProfilePage()//Profile()// TrymanyWidget()//HomeScreen()//,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:


















        Stack(
        children: [
          DrawerScreen(),
          HomeScreen()

        ],
      )

//      Center(
//
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//         ],
//        ),
//      ),
      ,floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void _incrementCounter() async{
   
var db=new DatabaseHelper();

int save =await db.saveUser(new UserDataType("_username", "123"));
print('the user are savr $save');
int t=  await db.getCount();
print('db getCount $t');
List users= await db.getallUser();
for(int i=0;i<users.length;i++){
  UserDataType userDataType=UserDataType.map(users[i]);
  print(userDataType.id);
  print(userDataType.usernume);
  print(userDataType.password);
}


  }
}





















