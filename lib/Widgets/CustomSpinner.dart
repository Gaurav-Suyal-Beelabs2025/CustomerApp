
import 'package:customerapp/Utils/Constants.dart';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSpinner extends StatelessWidget{

  VoidCallback onChanged;
  List<DropdownMenuItem<String>> items;
  String label="";

  CustomSpinner(
      {
        required  this.items,
        required this.onChanged
      });
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10),
          border: Border.all(color: CustomColor.textfieldcolor,width: 1)),

      // dropdown below..
      child: DropdownButton<String>(

        onChanged: (value) {

        },

        items: items,

        // add extra sugar..
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 42,
        underline: SizedBox(),
      ),
    );
  }

}