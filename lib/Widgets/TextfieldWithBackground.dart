

import 'package:customerapp/SignUp/SignupController.dart';
import 'package:customerapp/Utils/Constants.dart';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldWithBackground extends StatelessWidget{
  String label;
  var controller;
  TextfieldWithBackground(
      {
        required this.label,
        required this.controller
       });

  @override
  Widget build(BuildContext context) {
   return  TextField(
     controller: controller,
     decoration: InputDecoration(
       labelText: label,
       labelStyle: Constants.primaryTextviewStyle1,
       focusedBorder:Constants.textfieldBorderStyle,
       enabledBorder:Constants.textfieldBorderStyle,
       filled: true,
       fillColor: CustomColor.bordercolor,
     ),
   );
  }

}