import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'Screen2.dart';
import 'configuration.dart';

double xOffset = 0;
double yOffset = 0;
double scaleFactor = 1;

bool isDrawerOpen = false;
int selectitemlist = 0;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    for (int i = 0; i < 100; i++) {
      list.add("value  $i");
    }
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor),
        duration: Duration(milliseconds: 250),
        color: Colors.grey[200],
        child: SafeArea(
          top: true,
          child:

          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                expandedHeight: h * .27,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: <Widget>[
                      SizedBox(
                        height: h * .01,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            isDrawerOpen
                                ? Container(
                                    height: 50,
                                    width: 50,
                                    child: IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      onPressed: () {
                                        setState(() {
                                          xOffset = 0;
                                          yOffset = 0;
                                          scaleFactor = 1;
                                          isDrawerOpen = false;
                                        });
                                      },
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
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
                                  )
                                : Container(
                                    height: 50,
                                    width: 50,
                                    child: IconButton(
                                        icon: Icon(Icons.menu),
                                        onPressed: () {
                                          setState(() {
                                            xOffset = 230;
                                            yOffset = 150;
                                            scaleFactor = 0.6;
                                            isDrawerOpen = true;
                                          });
                                        }),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      Container(
                        height: h * .15,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    margin: EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: shadowList,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.asset(
                                      categories[index]['iconPath'],
                                      height: 50,
                                      width: 50,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  Text(categories[index]['name'])
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, pos) {
                      return Container(color:   Theme.of(context).scaffoldBackgroundColor,
                        child: Text('data $pos'),
                      );
                    },
                    childCount: 1000,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10,
                      childAspectRatio: 5))

            ],
          ),
        ));
  }

  Widget MyIconDesin() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  xOffset = 230;
                  yOffset = 150;
                  scaleFactor = 0.6;
                  isDrawerOpen = true;
                });
              }),
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
  Widget  tt(){
    return  SingleChildScrollView(child: Column(children: <Widget>[FittedBox(fit: BoxFit.fill,child: Container(child: Row(children: <Widget>[Container(height: 100,color: Colors.amber,),Container(height: 100,color: Colors.lightBlue,),Container(height: 100,color: Colors.amber,)],),))],),);
  }



}

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//SingleChildScrollView(
//child: Column(
//children: [
//SizedBox(
//height: 50,
//),
//Container(
//margin: EdgeInsets.symmetric(horizontal: 20),
//child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: [
//isDrawerOpen?Container(
//height: 50,
//width: 50,
//child: IconButton(
//icon: Icon(Icons.arrow_back_ios),
//onPressed: (){
//setState(() {
//xOffset=0;
//yOffset=0;
//scaleFactor=1;
//isDrawerOpen=false;
//
//});
//},
//
//),
//decoration: BoxDecoration(
//color: Colors.grey[300],
//borderRadius: BorderRadius.all(Radius.circular(25)),
//boxShadow: [
//BoxShadow(
//color: Colors.grey[500],
//offset: Offset(4.0, 4.0),
//blurRadius: 15.0,
//spreadRadius: 1.0),
//BoxShadow(
//color: Colors.white,
//offset: Offset(-4.0, -4.0),
//blurRadius: 15.0,
//spreadRadius: 1.0),
//]),
//): Container(
//height: 50,
//width: 50,
//child: IconButton(
//icon: Icon(Icons.menu),
//onPressed: () {
//setState(() {
//xOffset = 230;
//yOffset = 150;
//scaleFactor = 0.6;
//isDrawerOpen=true;
//});
//}),
//decoration: BoxDecoration(
//color: Colors.grey[300],
//borderRadius: BorderRadius.all(Radius.circular(25)),
//boxShadow: [
//BoxShadow(
//color: Colors.grey[500],
//offset: Offset(4.0, 4.0),
//blurRadius: 15.0,
//spreadRadius: 1.0),
//BoxShadow(
//color: Colors.white,
//offset: Offset(-4.0, -4.0),
//blurRadius: 15.0,
//spreadRadius: 1.0),
//]),
//),
//Column(
//children: [
//Text('Location'),
//Row(
//children: [
//Icon(
//Icons.location_on,
//color: primaryGreen,
//),
//Text('Ukraine'),
//],
//),
//],
//),
//CircleAvatar()
//],
//),
//),
//
//Container(
//padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
//margin: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
//decoration: BoxDecoration(
//color: Colors.white,
//borderRadius: BorderRadius.circular(20)
//),
//child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: [
//Icon(Icons.search),
//Text('Search pet to adopt'),
//Icon(Icons.settings)
//
//],
//),
//),
//
//Container(height: 120,
//child: ListView.builder(
//scrollDirection: Axis.horizontal,
//itemCount: categories.length,
//itemBuilder: (context,index){
//return Container(
//child: Column(
//children: [
//Container(
//
//padding: EdgeInsets.all(10),
//margin: EdgeInsets.only(left: 20),
//decoration: BoxDecoration(
//color: Colors.white,
//boxShadow: shadowList,
//borderRadius: BorderRadius.circular(10)
//),
//child: Image.asset(categories[index]['iconPath'],       height: 50,
//width: 50,color: Colors.grey[700],),
//),
//Text(categories[index]['name'])
//],
//),
//);
//},
//
//),
//),
//
//
//GestureDetector(
//onTap: (){
//Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
//
//},
//child: Container(
//height: 240,
//margin: EdgeInsets.symmetric(horizontal: 20),
//child: Row(
//children: [
//Expanded(
//child: Stack(
//children: [
//Container(
//decoration: BoxDecoration(color: Colors.blueGrey[300],
//borderRadius: BorderRadius.circular(20),
//boxShadow: shadowList,
//),
//margin: EdgeInsets.only(top: 50),
//),
//Align(
//child: Hero(
//tag:1,child: Image.asset('images/pet-cat2.png')),
//)
//
//],
//),
//),
//Expanded(child: Container(
//margin: EdgeInsets.only(top: 60,bottom: 20),
//decoration: BoxDecoration(color: Colors.white,
//
//boxShadow: shadowList,
//borderRadius: BorderRadius.only(
//topRight: Radius.circular(20),
//bottomRight: Radius.circular(20)
//
//)
//),
//
//))
//
//],
//),
//
//),
//),
//Container(
//height: 240,
//margin: EdgeInsets.symmetric(horizontal: 20),
//child: Row(
//children: [
//Expanded(
//child: Stack(
//children: [
//Container(
//decoration: BoxDecoration(color: Colors.orange[100],
//borderRadius: BorderRadius.circular(20),
//boxShadow: shadowList,
//),
//margin: EdgeInsets.only(top: 50),
//),
//Align(
//child: Image.asset('images/pet-cat1.png'),
//)
//
//],
//),
//),
//Expanded(child: Container(
//margin: EdgeInsets.only(top: 60,bottom: 20),
//decoration: BoxDecoration(color: Colors.white,
//
//boxShadow: shadowList,
//borderRadius: BorderRadius.only(
//topRight: Radius.circular(20),
//bottomRight: Radius.circular(20)
//
//)
//),
//
//))
//
//],
//),
//
//),
//SizedBox(height: 50,)
//
//
//
//
//
//
//],
//),
//),
