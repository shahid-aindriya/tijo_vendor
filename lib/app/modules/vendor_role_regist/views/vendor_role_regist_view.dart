import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tijo_vendor/app/modules/vendor_kyc_regist/views/vendor_kyc_regist_view.dart';

import '../../../data/refactors/buttons.dart';
import '../controllers/vendor_role_regist_controller.dart';

class VendorRoleRegistView extends GetView<VendorRoleRegistController> {
  final VendorRoleRegistController _controller =
      Get.put(VendorRoleRegistController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                height: 6,
                width: 32.132.w,
                decoration: BoxDecoration(
                  color: Color(0xff1586cb),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Vendor Registration',
                  style: GoogleFonts.poppins(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Color(0xff2255bc),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 5.w, right: 5.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Select Your Role",
                      style: GoogleFonts.poppins(
                          height: 2, fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GetBuilder<VendorRoleRegistController>(builder: (context) {
                  return InkWell(
                    onTap: () {
                      _controller.radioFunct(1);
                    },
                    child: Card(
                      color: _controller.groupValue == 1
                          ? Color(0xffeaf7ff)
                          : Color.fromARGB(255, 249, 249, 249),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: _controller.groupValue == 1
                                  ? Color(0xff3eb6ff)
                                  : Colors.transparent),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // ellipse1a7H (1:249)
                                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: _controller.groupValue == 1
                                        ? Color(0xff1977c7)
                                        : Color(0xffe1e1e1),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // iownashop6LX (1:250)
                                        'I own a Shop',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Eg: Supermarket, Textiles, Jewelers, Restaurant, Grocery Shop etc... ',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          height: 1.5,
                                          color: Color(0xff000000),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                SizedBox(
                  height: 10,
                ),
                GetBuilder<VendorRoleRegistController>(builder: (contexts) {
                  return InkWell(
                    onTap: () {
                      _controller.radioFunct(2);
                    },
                    child: Card(
                      color: _controller.groupValue == 2
                          ? Color(0xffeaf7ff)
                          : Color.fromARGB(255, 249, 249, 249),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: _controller.groupValue == 2
                                  ? Color(0xff3eb6ff)
                                  : Colors.transparent),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // ellipse1a7H (1:249)
                                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: _controller.groupValue == 2
                                        ? Color(0xff1977c7)
                                        : Color(0xffe1e1e1),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // iownashop6LX (1:250)
                                        'I’m a service provider',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Eg: Electrical, Plumbing, Tailoring, Carpentry, Handyman etc... ',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          height: 1.5,
                                          color: Color(0xff000000),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButtons(
                  name: "Back",
                  navigation: () {
                    _controller.groupValue = 0;
                    Get.back();
                  }),
              NextButton(
                name: "Next",
                navigation: () {
                  Get.to(VendorKycRegistView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
