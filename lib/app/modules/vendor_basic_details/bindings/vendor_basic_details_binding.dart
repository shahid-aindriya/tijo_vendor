import 'package:get/get.dart';

import '../controllers/vendor_basic_details_controller.dart';

class VendorBasicDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VendorBasicDetailsController>(
      () => VendorBasicDetailsController(),
    );
  }
}
