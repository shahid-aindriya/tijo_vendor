import 'package:get/get.dart';

import '../controllers/vendor_kyc_regist_controller.dart';

class VendorKycRegistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VendorKycRegistController>(
      () => VendorKycRegistController(),
    );
  }
}
