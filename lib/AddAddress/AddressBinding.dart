
import 'package:customerapp/AddAddress/AddressController.dart';
import 'package:get/get.dart';

class AddressBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AddressController>(() => AddressController());
  }

}