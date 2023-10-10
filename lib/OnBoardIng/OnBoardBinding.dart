
import 'package:customerapp/OnBoardIng/OnBoardController.dart';
import 'package:get/get.dart';

class OnBoardBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<OnBoardController>(() => OnBoardController());
  }

}