
import 'package:customerapp/Utils/Constants.dart';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilledCustomButton extends StatelessWidget{

  VoidCallback onPressed;
  String label="";

  FilledCustomButton(
      {
        required  this.label,
        required this.onPressed
      });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
      Constants.buttonStyle,
      onPressed: onPressed,
      child:  Text(
        label,
        style: Constants.buttonTextstyle,
      ),
    );
  }

}