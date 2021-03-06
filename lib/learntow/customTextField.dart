import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconData icon;
  double _width;
  double _pixelRatio;
  bool large;
  bool medium;
  Function funvalidator;
  Function onSavedd;
  CustomTextField(
      {this.hint,
        this.textEditingController,
        this.keyboardType,
        this.icon,
        this.obscureText= false,
        this.funvalidator,this.onSavedd
      });

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    large =  ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    medium=  ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      elevation: large? 12 : (medium? 10 : 8),
      child: TextFormField(validator: funvalidator,
        controller: textEditingController,
        onSaved: onSavedd,
        keyboardType: keyboardType,
        cursorColor: Colors.amberAccent[200],
        obscureText: obscureText,maxLines: null,minLines: null,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.amberAccent[300], size: 20),
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}

class ResponsiveWidget{

  static bool isScreenLarge(double width, double pixel) {
    return width * pixel >= 1440;
  }

  static bool isScreenMedium(double width, double pixel) {
    return width * pixel < 1440 && width * pixel >=1080;
  }

  static bool isScreenSmall(double width, double pixel) {
    return width * pixel <= 720;
  }
}