import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utills{

 static void showSnackbar(var title,var message,var context){
   /* Get.snackbar(
      title,
     message,
      colorText: Colors.white,
      backgroundColor:Colors.black,

    );*/

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3), // Duration for which the Snackbar is displayed
      ),
    );
  }
  }


