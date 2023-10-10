import 'dart:async';

import 'package:customerapp/Utils/CustomColor.dart';
import 'package:customerapp/Widgets/CustomSpinner.dart';
import 'package:customerapp/Widgets/FilledCustomButton.dart';
import 'package:customerapp/Widgets/TextfieldWithBackground.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddAddressBottomSheet extends StatelessWidget {
  AddAddressBottomSheet();

  @override
  Widget build(BuildContext context) {
    return Container(
       color: CupertinoColors.systemBackground,
        child: SingleChildScrollView(
      child:
      SafeArea(
            child: Container(
                decoration:  const BoxDecoration(
                    color:CustomColor.white,shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      topRight:  Radius.circular(20),
                    )
                ),
                child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 25.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                    Row(
                      children: [
                        SvgPicture.asset("assets/images/backicon.svg"),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Full Address",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: CustomColor.black),
                        ),
                      ],
                    ),

                const SizedBox(height: 10,),
                    Row(
                     mainAxisSize: MainAxisSize.max,
                      children: [
                      Expanded(

                        flex: 1,
                          child: CustomSpinner(items: List.empty(),onChanged: (){
                      },
                      )),

                      const SizedBox(width: 11,),
                        Expanded(
                          flex: 1,
                          child:
                        CustomSpinner(items: List.empty(),onChanged: (){

                        },
                        ))
                      ],
                    ),
                    const SizedBox(height: 16,),
                    TextfieldWithBackground(label: "Pincode",controller: TextEditingController(),),
                    const SizedBox(height: 16,),
                    TextfieldWithBackground(label: "Flat/ House no / Floor / Building",controller: TextEditingController(),),
                    const SizedBox(height: 16,),
                    TextfieldWithBackground(label: "Area/ Sector / Locality",controller: TextEditingController(),),
                    const SizedBox(height: 16,),
                    TextfieldWithBackground(label: "Nearby Landmark (optional)",controller: TextEditingController(),),

                    const SizedBox(height: 20,),

                   const Text("Save Address As",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,
                      color: CustomColor.black
                    ),),

                        SizedBox(height: 16,),
                        Expanded(child: FilledCustomButton(label: "Save Address",
                        onPressed: (){}),)
                  ])

                )
            )
        )
        ) );

  }
}
