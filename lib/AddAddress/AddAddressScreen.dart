
import 'package:customerapp/AddAddress/AddressController.dart';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:customerapp/Widgets/FilledCustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddAddressScreen extends GetView<AddressController>{
  final addressController = Get.find<AddressController>();
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
   body: Stack(
     children: <Widget>[
       Obx(() => GoogleMap(

         initialCameraPosition: const CameraPosition(
           target: LatLng(28.626690, 77.385849),
           zoom: 10.0,
         ),
         markers:addressController.markers.toSet(),
         circles: addressController.circles.toSet(),
       ),
       ),

    /*   Padding(*/

         Align(
           alignment: Alignment.bottomCenter,
           child:  Container(
             width: double.infinity,
             height: 130,
             decoration: const BoxDecoration(
                boxShadow:[BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20.0,
                ),] ,
                 color:CustomColor.white,shape: BoxShape.rectangle,
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                   topRight:  Radius.circular(20),
                 )
             ),
             child:   Padding(
               padding: const EdgeInsets.all(8.0),
               child:Column(
                   children: [
                    Row(
                 children: [
                   Image.asset("assets/images/locationicon.jpg",
                     width: 40,height: 40,),
                   const SizedBox(width: 10),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       const   Text(
                         'Your Location',

                         style: TextStyle(fontSize: 16,
                             fontWeight: FontWeight.w500,
                             color: CustomColor.blacktextcolor),
                         textAlign: TextAlign.left,
                       ),
                          SizedBox(height: 8,),
                          Obx(() =>  Text(
                            addressController.address.toString(),
                          style: TextStyle(fontSize: 14,
                             fontWeight: FontWeight.w400,
                             color: CustomColor.lightblacktextcolor),

                       )
                          ),


                     ],
                   )

                 ],
               ),
                   Expanded(

                       child: Align(
                           alignment: Alignment.bottomCenter,
                           child:
                           FilledCustomButton(label: "Add Address", onPressed: (){
                            addressController.onAddAddressClicked();
                           })
                       ))
                 ]
                   )


             ),)
         ),
     /*  ),*/
     ],
   ),


   );


  }

}