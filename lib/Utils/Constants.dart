import 'dart:ui';

import 'package:customerapp/Utils/CustomColor.dart';
import 'package:flutter/material.dart';

class Constants {
  static var primaryTextviewStyle1 = const TextStyle(
    color: CustomColor.textcolor1,
  );

  static var textfieldBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: CustomColor.textfieldcolor,
      width: 2.0,
    ),
  );

  static var buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: CustomColor.primarycolor,
      minimumSize: const Size.fromHeight(50), // NEW
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12))));

  static var buttonTextstyle =
      const TextStyle(fontSize: 15, fontWeight: FontWeight.w700);

  static var headingTextstyle = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.w800, color: CustomColor.black);

  static var lightbalcktextstyle400 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: CustomColor.lightblack);

  static var balcktextstyle400 = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: CustomColor.black);

  static var bluetextstyle500 =const TextStyle(
  decoration:TextDecoration.underline,
  fontSize: 16,
  color: CustomColor.lightblue,
  fontWeight: FontWeight.w500);
}
