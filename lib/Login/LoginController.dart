import 'package:customerapp/AppPages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends FullLifeCycleController with FullLifeCycleMixin
{
  TextEditingController ? phone_number_contrller;
  TextEditingController ? email_contrller;
   bool value=false;

   @override
  void onInit() {
     phone_number_contrller=TextEditingController();
     email_contrller=TextEditingController();
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

  void onClick() {
    Get.toNamed(Routes.SIGNUP);
  }

}