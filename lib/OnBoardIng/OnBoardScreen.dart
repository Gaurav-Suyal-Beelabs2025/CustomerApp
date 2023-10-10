import 'package:customerapp/OnBoardIng/OnBoardController.dart';
import 'package:customerapp/Utils/AssetImages.dart';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:customerapp/Utils/Strings.dart';
import 'package:customerapp/Widgets/FilledCustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnBoardScreen extends GetView<OnBoardController> {
  final onBoardController = Get.find<OnBoardController>();
  @override
  Widget build(BuildContext context) {

    return Container(
        child: Scaffold(
      body: SafeArea(
          child:
          Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [CustomColor.lightorance, CustomColor.whitevariant],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
              padding: EdgeInsets.fromLTRB(28.0, 0, 28.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Get ',
                            style: TextStyle(
                                fontSize: 36,
                                color: CustomColor.black,
                                fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: 'Delievered\n',
                            style: TextStyle(
                                fontSize: 36,
                                color: CustomColor.textcolor,
                                fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: 'from ',
                            style: TextStyle(
                                fontSize: 36,
                                color: CustomColor.black,
                                fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: 'Anywhere\n',
                            style: TextStyle(
                                fontSize: 36,
                                color: CustomColor.textcolor,
                                fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: 'Search your neighbourhood \non ',
                            style: TextStyle(
                                fontSize: 16,
                                color: CustomColor.black,
                                fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: 'Handover.',
                            style: TextStyle(
                                fontSize: 16,
                                color: CustomColor.black,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),

                  Expanded(child: Align(
                    alignment: Alignment.centerRight,
                    child:    Image.asset(AssetImages.onBoardScreenImg,
                      alignment: Alignment.centerRight,),
                  )),


                  Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,0,42),
                      child:
                     FilledCustomButton(label: Strings.get_started,
                      onPressed: (

                          ) {
                        onBoardController.onClick();
                      })
                    ),
                  )),


                ],
              )),
        ),
      )),
    ));
  }
}
