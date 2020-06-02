import 'package:flutter/material.dart';

class Anim extends StatefulWidget {
  @override
  _AnimState createState() => _AnimState();
}

class _AnimState extends State<Anim> with SingleTickerProviderStateMixin {
  Animation _animation, _delayedAnimation, _muchDelayedAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: Duration(
          seconds: 3,
        ),
        vsync: this);
    _animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Curves.fastOutSlowIn, parent: _animationController));

    _delayedAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        curve: Interval(.5, 1.0, curve: Curves.fastOutSlowIn),
        parent: _animationController));

    _muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(
            curve: Interval(.8, 1.0, curve: Curves.fastOutSlowIn),
            parent: _animationController));
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery
        .of(context)
        .size
        .width;
    _animationController.forward();
    return Scaffold(body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Transform(transform: Matrix4.translationValues(0.0
                        , _animation.value*
                            width, 0.0),child: Text('9999999999999999999999999999999999'))
                    ,
                    Transform(transform: Matrix4.translationValues(_animation.value*
                        width, 0.0, 0.0),child: Text('888888888888'))  ,
                    Transform(transform: Matrix4.translationValues(-_delayedAnimation.value*
                        width, 0.0, 0.0),child: Text('555')) ,       Transform(transform: Matrix4.translationValues(_animation.value*
                        width, 0.0, 0.0),child: Text('9999999999999999999999999999999999'))
                    ,
                    Transform(transform: Matrix4.translationValues(_animation.value*
                        width, 0.0, 0.0),child: Text('888888888888'))  ,
                    Transform(transform: Matrix4.translationValues(_delayedAnimation.value*
                        width, 0.0, 0.0),child: Text('555')),       Transform(transform: Matrix4.translationValues(_animation.value*
                        width, 0.0, 0.0),child: Text('9999999999999999999999999999999999'))
                    ,
                    Transform(transform: Matrix4.translationValues(_animation.value*
                        width, 0.0, 0.0),child: Text('888888888888'))  ,
                    Transform(transform: Matrix4.translationValues(_delayedAnimation.value*
                        width, 0.0, 0.0),child: Text('555')),       Transform(transform: Matrix4.translationValues(_animation.value*
                        width, 0.0, 0.0),child: Text('9999999999999999999999999999999999'))
                    ,
                  ],
                ),)
              ,
            ),
          );
        }),);
  }
}
