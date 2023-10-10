import 'package:customerapp/SignUp/SignupController.dart';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:customerapp/Widgets/FilledCustomButton.dart';
import 'package:customerapp/Widgets/TextfieldWithBackground.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignUpScreen extends GetView{
  final signupController = Get.find<SignupController>();

  @override
  Widget build(BuildContext context) {
    return

      Container(
        child: SafeArea(child: Container(
        decoration: BoxDecoration(color: CustomColor.white),
    width: double.infinity,
    height: double.infinity,
    child:
    Scaffold(
      body:     Padding(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 25.0),
        child: Column(children: [
          Row(
            children: [

              SvgPicture.asset("assets/images/backicon.svg"),
              SizedBox(width: 10,),
              const Text("Sign Up",
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: CustomColor.black),),
            ],),
          SizedBox(height: 30,),
          /*  TextFormField(
                      decoration: InputDecoration(
                        labelText: "Resevior Name",
                        fillColor: CustomColor.textfieldcolor,
                        focusedBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: CustomColor.bordercolor, width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),*/

          TextfieldWithBackground(label: "Enter your number",controller: signupController.phone_number_contrller,),

       /*   TextField(
            style: const TextStyle(color: CustomColor.textcolor1),

            decoration: InputDecoration(
              labelText: "Enter your number",
              labelStyle: const TextStyle(color: CustomColor.textcolor1,
              ),
              focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: CustomColor.textfieldcolor, width: 2.0,
                ),),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),

                borderSide: const BorderSide(color: CustomColor.textfieldcolor, width: 2.0,
                ),),
              filled: true,
              fillColor: CustomColor.bordercolor,
            ),
          ),*/

          SizedBox(height: 40,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding:EdgeInsets.symmetric(horizontal:10.0),
                child:Container(
                    height:2.0,
                    width:100,
                    color:CustomColor.lightgrey),),
              const Text("continue with",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color:CustomColor.lightblack
              ),),

              Padding(
                padding:EdgeInsets.symmetric(horizontal:10.0),
                child:Container(
                    height:2.0,
                    width: 100,
                    color:CustomColor.lightgrey),),
            ],),
          SizedBox(height: 36,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              InkWell(onTap: () {
               signupController.openBottomSheetDialgoue();
              },
              child:   Container(
                height: 58,
                width: 61,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(37),
                    border:Border.all(color: CustomColor.lightgreyborder)),
                child: Image.asset("assets/images/googlejpg.jpg"),
              ),),


              /*SvgPicture.asset("assets/images/facebook.svg"),*/
              Padding(
                padding: const EdgeInsets.fromLTRB(13.0,0,0,0),
                child: Container(
                  height: 58,
                  width: 61,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(37),
                      border:Border.all(color: CustomColor.lightgreyborder)),
                  child: Image.asset("assets/images/facebook.jpg"),
                ),
              )
            ],
          ),

              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged:(value) {
                        },
                      ),

                      SizedBox(height: 18,),

                      const Text("I allow handover to send me masseges\non WhatsApp",
                      style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.lightblack),)
                    ],
                  ),
                  FilledCustomButton(label: "Next", onPressed: () {
                    signupController.onClick();
                  }),
                ],))


        ],),
      ),
    )
        )));
  }

}