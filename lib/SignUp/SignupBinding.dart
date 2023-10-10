
import 'package:customerapp/SignUp/SignupController.dart';
import 'package:get/get.dart';

class SignupBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
  }

}