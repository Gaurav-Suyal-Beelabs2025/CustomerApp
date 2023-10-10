import 'dart:async';
import 'package:customerapp/AppPages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends FullLifeCycleController with FullLifeCycleMixin
{
  TextEditingController ? contrller1;
  TextEditingController ? contrller2;
  TextEditingController ? contrller3;
  TextEditingController ? contrller4;
  TextEditingController ? contrller5;
  TextEditingController ? contrller6;
  TextEditingController ? phone_number_controller;
  final _secondsRemaining = 150.obs; // 2 minutes and 30 seconds
  RxInt get secondsRemaining => _secondsRemaining;
  Timer? _timer;

  @override
  void onInit() {
    contrller1 = TextEditingController();
    contrller2 = TextEditingController();
    contrller3 = TextEditingController();
    contrller4 = TextEditingController();
    contrller5 = TextEditingController();
    contrller6 = TextEditingController();
    phone_number_controller=TextEditingController();
    startTimer();
    super.onInit();

  }



  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining.value > 0) {
        _secondsRemaining.value--;
      } else {
        timer.cancel(); // Cancel the timer when it reaches 0
      }
    });
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
    @override
  void onClose() {
      _timer?.cancel();
    super.onClose();
  }



  @override
  void dispose() {

    super.dispose();
  }

  void onClicked() {
    Get.toNamed(Routes.ADDADDRESS);
  }



  }
