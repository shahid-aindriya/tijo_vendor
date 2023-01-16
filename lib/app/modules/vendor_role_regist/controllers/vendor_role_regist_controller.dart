import 'package:get/get.dart';

class VendorRoleRegistController extends GetxController {
  //TODO: Implement VendorRoleRegistController

  final count = 0.obs;

  void increment() => count.value++;

  int groupValue = 0;

  radioFunct(value) {
    groupValue = value;
    update();
  }
}
