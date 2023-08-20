import 'package:flutter/material.dart';

class TextClass{
    double x = 100;
    double y = 100;
  TextClass(){
    //int i = 0;
  }

  Widget myText(String text,double fontsize, Color initialTextColor, String fontType,BuildContext context){
    return Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(left: 10,right: 10),
        padding: EdgeInsets.only(right: 5),
        width:  MediaQuery.of(context).size.width*0.95,
        child: Text(text,style: TextStyle(fontSize: fontsize,color: initialTextColor,
    fontFamily: fontType,fontWeight: FontWeight.bold),textAlign: TextAlign.center,));
  }

  void changeCoord(double ix, double iy){
    x = ix;
    y = iy;
  }

}