import 'package:flutter/material.dart';
class MyCunv extends StatefulWidget {
  @override
  _MyCunvState createState() => _MyCunvState();
}

class _MyCunvState extends State<MyCunv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Center(child: CustomPaint(child: Container(),painter: MYCard(Colors.blue),),),),);
  }
}
class MYCard extends CustomPainter{
  final Color color;

  MYCard(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color=color
    ..strokeWidth=5
    ..strokeCap=StrokeCap.round
    ..style=PaintingStyle.fill;
    final paint2 = Paint()..color=Colors.deepOrange
      ..strokeWidth=5
      ..strokeCap=StrokeCap.round
      ..style=PaintingStyle.fill;
    final paint3 = Paint()..color=Colors.deepOrange
      ..strokeWidth=5
      ..strokeCap=StrokeCap.round
      ..style=PaintingStyle.stroke;
    // set the color property of the paint
    paint.color = color;
Path path=Path();
    Path path2=Path();
//path.lineTo(50, 50);
//path.lineTo(100, 0);
//    path.lineTo(150, 50);
//    path.lineTo(200, 0);
//    path.lineTo(250, 50);
//    path.lineTo(300, 0);
//    path.lineTo(300,150);
// path.quadraticBezierTo(size.height/3, size.height, 0,0);
 //offset (x2,y2)
// path.close();
    path.lineTo(0, 0);
    path.quadraticBezierTo( size.width*.25, size.height*.1,size.width*.5,0);
    path.quadraticBezierTo( size.width *.75, size.height*.1,size.width ,0);
canvas.drawPath(path, paint);
    path2.moveTo(size.width*.25, 0);
    path2.quadraticBezierTo( size.width*.5, size.height*.1,size.width*.75,0);
Path path3=Path();
path3.lineTo(100, size.height*.2);
    path3.quadraticBezierTo(size.width*.6, size.height*.3, 0, size.height*.6);
    canvas.drawPath(path3, paint3);
  }



  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}