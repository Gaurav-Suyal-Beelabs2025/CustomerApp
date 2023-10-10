import 'package:customerapp/Otp/OtpController.dart';
import 'package:get/get.dart';

class OtpBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(() => OtpController());
  }

}