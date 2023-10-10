import 'package:customerapp/AppPages.dart';
import 'package:customerapp/Utils/Authentication.dart';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(  GetMaterialApp(
    title: "Flutter App",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: CustomColor.primarycolor,
        primaryColorLight: CustomColor.secondarycolor
    ),
    initialRoute: AppPages.InitialPage,
    getPages: AppPages.routes,
  ));
}