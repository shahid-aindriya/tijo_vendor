import 'package:get/get.dart';

import '../controllers/vendor_role_regist_controller.dart';

class VendorRoleRegistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VendorRoleRegistController>(
      () => VendorRoleRegistController(),
    );
  }
}
