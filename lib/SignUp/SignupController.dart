
import 'package:customerapp/AppPages.dart';
import 'package:customerapp/Utils/Authentication.dart';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends FullLifeCycleController with FullLifeCycleMixin{
  TextEditingController ? phone_number_contrller;

  @override
  void onInit() {
  phone_number_contrller=TextEditingController();
    super.onInit();
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onHidden() {
    // TODO: implement onHidden
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }

  void openBottomSheetDialgoue() {



    Authentication.signInWithGoogle(context: Get.context!!);

     /* Get.bottomSheet(


        Container(
        decoration: const BoxDecoration(
          color:CustomColor.white,shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
          topRight:  Radius.circular(20),
        )
        ),
        child:   Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Bottom Sheet',
                style: TextStyle(fontSize: 18),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Close'),
            ),
          ],
        ),)

      );*/
  }

  void onClick() {
    Get.toNamed(Routes.OTP,arguments: {"phone_number":phone_number_contrller?.value});
  }

}