import 'package:customerapp/Utils/AssetImages.dart';
import 'package:customerapp/Utils/Constants.dart';
import 'package:customerapp/Utils/Strings.dart';
import 'package:customerapp/Utils/Utility.dart';
import 'package:customerapp/Widgets/FilledCustomButton.dart';
import 'package:customerapp/Widgets/TextfieldWithBackground.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'LoginController.dart';
import 'package:customerapp/OnBoardIng/OnBoardController.dart';
import 'package:flutter/cupertino.dart';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:customerapp/Utils/Strings.dart';


class Login extends GetView<LoginController>{
  final loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(child: Container(
          decoration: BoxDecoration(color: CustomColor.white),
          width: double.infinity,
          height: double.infinity,
          child:
              Scaffold(
                body:Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 25.0),
                  child: Column(children: [
                    Row(
                      children: [

                        SvgPicture.asset(AssetImages.back_icon),
                        SizedBox(width: 10,),
                         Text(Strings.get_started,
                          style: Constants.headingTextstyle,),
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
                    TextfieldWithBackground(label: Strings.enter_your_number,controller: loginController.phone_number_contrller,),

                    /*TextField(
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
                       Text(Strings.or_login_with_email,style: Constants.lightbalcktextstyle400,),

                      Padding(
                        padding:EdgeInsets.symmetric(horizontal:10.0),
                        child:Container(
                            height:2.0,
                            width: 100,
                            color:CustomColor.lightgrey),),
                    ],),

                    SizedBox(height: 30,),

                 TextfieldWithBackground(label: Strings.email_iD,controller: loginController.email_contrller,),
                 /*   TextField(
                        style: const TextStyle(color: CustomColor.textcolor1),
                        decoration: InputDecoration(
                          labelText: "Email ID",
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
                        )),*/

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
                         Text(Strings.continue_with,style: Constants.lightbalcktextstyle400,),

                        Padding(
                          padding:EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                              height:2.0,
                              width: 100,
                              color:CustomColor.lightgrey),),
                      ],),
                    SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 58,
                          width: 61,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(37),
                              border:Border.all(color: CustomColor.lightgreyborder)),
                          child: Image.asset(AssetImages.google_icon),
                        ),

                        /*SvgPicture.asset("assets/images/facebook.svg"),*/
                        Padding(
                          padding: const EdgeInsets.fromLTRB(13.0,0,0,0),
                          child: Container(
                            height: 58,
                            width: 61,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(37),
                                border:Border.all(color: CustomColor.lightgreyborder)),
                         child: Image.asset(AssetImages.facebook_icon),
                          ),
                        )
                      ],
                    ),



                    Expanded(child: Align(
                      alignment: Alignment.bottomCenter,
                      child:

                      RichText(
                        text:  TextSpan(
                          // Note: Styles for TextSpans must be explicitly defined.
                          // Child text spans will inherit styles from parent
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Not a user?\n',
                                style: Constants.balcktextstyle400),
                            TextSpan(
                                text: Strings.signup_now,
                                style: Constants.bluetextstyle500),

                          ],
                        ),
                      ) ,
                    )),


                    Expanded(

                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child:
                          FilledCustomButton(label: Strings.next, onPressed: (
                              ) {
                            loginController.onClick();
                          },
                          ),
                        ),

                    )],),
                ),
              )

          ,),)
    );
  }


}