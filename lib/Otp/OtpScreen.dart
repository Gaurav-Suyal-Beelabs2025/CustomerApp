

import 'package:customerapp/Otp/OtpController.dart';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:customerapp/Widgets/FilledCustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OtpScreen extends GetView{
  double  ? height ;
  double ? width;
  final otpController = Get.find<OtpController>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    height= MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset("assets/images/backicon.svg") ,),

                  SizedBox(width: 10,),
                  const Text("Mobile Verification",
                    style: TextStyle(fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: CustomColor.black),),
                ],),

          SizedBox(height: 21,),

            const  Align(
                alignment: Alignment.topLeft,
                 child:
                 Text("A 6 digit code has been sent to",
                  textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.lightblack),),
              ),

               Row(children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child:
                  Text("7888456320",
                    textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: CustomColor.lightblack),),
                ),
                SizedBox(width: 5,),
                SvgPicture.asset("assets/images/editicon.svg"),
              ],),

              SizedBox(height: 16,),
              Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(flex: 1,child: _textFieldOTP(first: true, last: false,controllerr:
                      otpController.contrller1,context: context)),
                      const SizedBox(width: 10,),
                      Expanded(flex: 1,child:_textFieldOTP(first: false, last: false,controllerr:
                      otpController.contrller2,context: context)),
                      const  SizedBox(width: 10,),
                      Expanded(flex: 1,child: _textFieldOTP(first: false, last: false,controllerr:
                      otpController.contrller3,context: context)),
                      const  SizedBox(width: 10,),
                      Expanded(flex: 1,child: _textFieldOTP(first: false, last: false, controllerr:
                      otpController.contrller4,context: context)),
                      const  SizedBox(width: 10,),
                      Expanded(flex: 1,child:_textFieldOTP(first: false, last: false, controllerr:
                      otpController.contrller5,context: context)),
                      const SizedBox(width: 10,),
                      Expanded(flex: 1,child:_textFieldOTP(first: false, last: true, controllerr:
                      otpController.contrller5,context: context)),
                    /*  _textFieldOTP(first: false, last: true, controllerr:
                      otpController.contrller6,context: context),*/

                    ],
                  ),
                 /* Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap:() {
                      },
                      child: Text("Resend OTP?",
                        style:TextStyle(fontStyle:
                        FontStyle.normal,
                            fontSize: width!*0.0234,
                            color:CustomColor.primarycolor),
                      ),
                    ),
                  ),

                  SizedBox(height: height!/28,),
                  GestureDetector(
                    onTap: (){


                        },
                    child: Container(
                        height: height!/18,
                        width: width,
                        decoration: BoxDecoration(
                            color:CustomColor.whitevariant,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text("Verify",style: TextStyle(
                              color: Colors.white,
                              fontSize: width!*0.02345
                          ),),
                        )
                    ),
                  ),*/
                ],
              ),

              SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

        SvgPicture.asset("assets/images/clockicon.svg"),

      SizedBox(width: 8,),
    Obx(
    () {
      int minutes = otpController.secondsRemaining.value ~/ 60;
      int seconds = otpController.secondsRemaining.value % 60;
      return   Text("$minutes :$seconds",
        style: const TextStyle(fontSize: 20,
            fontWeight: FontWeight.w600,
            color: CustomColor.blacktextcolor),);

    }),
    ]),
              SizedBox(height: 16,),

              OutlinedButton(
                style:OutlinedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(34,14,34,14),
                  side: const BorderSide(width: 1.0, color:CustomColor.textfieldcolor,
                  ),
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child:const Text("Re-Send",style: TextStyle(
                  color: CustomColor.lightblue,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),),
                onPressed: () {},
              ),



              Expanded(

                child: Align(
                  alignment: Alignment.bottomCenter,
                  child:
                  FilledCustomButton(label: "Submit", onPressed: (
                      ) {
                    otpController.onClicked();
                  },
                  ),
                ),

              )
              

            ],
          ),
        ),
      ),
    );


  }

  Widget _textFieldOTP({bool ? first, last,
    TextEditingController ?
    controllerr,required BuildContext context}) {
    return Container(
      height:height!/12 ,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(

          controller: controllerr,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: true,
          cursorColor: CustomColor.blacktextcolor,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400,
          color:CustomColor.blacktextcolor ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: CustomColor.bordercolor,
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: CustomColor.textfieldcolor),
                borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: CustomColor.textfieldcolor),
                borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
    );
  }



}

