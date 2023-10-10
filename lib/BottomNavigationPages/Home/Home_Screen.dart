
import 'package:customerapp/BottomNavigationPages/Home/Home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
         child: Center(

         ),
       ),
      bottomNavigationBar: BottomNavigationBar(
        items: [_bottomNavigationItem()],
      ),
   );
  }

  _bottomNavigationItem(IconData iconData,String label) {
    return BottomNavigationBarItem(label: label,icon: iconData),
  }

}