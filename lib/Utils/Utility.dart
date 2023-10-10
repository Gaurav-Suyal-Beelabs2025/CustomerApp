
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:flutter/material.dart';

class Utility{

  OutlineInputBorder myTextBorderborder(Color color,double widthh){ //return type is OutlineInputBorder

    return  OutlineInputBorder( //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color:color,
          width: widthh,
        )
    );
  }


}