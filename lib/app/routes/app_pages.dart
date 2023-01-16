import 'package:get/get.dart';

import 'package:tijo_vendor/app/modules/home/bindings/home_binding.dart';
import 'package:tijo_vendor/app/modules/home/views/home_view.dart';
import 'package:tijo_vendor/app/modules/login/bindings/login_binding.dart';
import 'package:tijo_vendor/app/modules/login/views/login_view.dart';
import 'package:tijo_vendor/app/modules/otp_verification/bindings/otp_verification_binding.dart';
import 'package:tijo_vendor/app/modules/otp_verification/views/otp_verification_view.dart';
import 'package:tijo_vendor/app/modules/vendor_basic_details/bindings/vendor_basic_details_binding.dart';
import 'package:tijo_vendor/app/modules/vendor_basic_details/views/vendor_basic_details_view.dart';
import 'package:tijo_vendor/app/modules/vendor_kyc_regist/bindings/vendor_kyc_regist_binding.dart';
import 'package:tijo_vendor/app/modules/vendor_kyc_regist/views/vendor_kyc_regist_view.dart';
import 'package:tijo_vendor/app/modules/vendor_role_regist/bindings/vendor_role_regist_binding.dart';
import 'package:tijo_vendor/app/modules/vendor_role_regist/views/vendor_role_regist_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFICATION,
      page: () => OtpVerificationView(),
      binding: OtpVerificationBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR_BASIC_DETAILS,
      page: () => VendorBasicDetailsView(),
      binding: VendorBasicDetailsBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR_ROLE_REGIST,
      page: () => VendorRoleRegistView(),
      binding: VendorRoleRegistBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR_KYC_REGIST,
      page: () => VendorKycRegistView(),
      binding: VendorKycRegistBinding(),
    ),
  ];
}
