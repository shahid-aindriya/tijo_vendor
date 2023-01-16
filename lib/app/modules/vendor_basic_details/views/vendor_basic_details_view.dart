import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tijo_vendor/app/data/refactors/buttons.dart';
import 'package:tijo_vendor/app/modules/vendor_role_regist/views/vendor_role_regist_view.dart';

import '../controllers/vendor_basic_details_controller.dart';

class VendorBasicDetailsView extends GetView<VendorBasicDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                height: 6,
                width: 16.66.w,
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0),
            child: Text(
              'If you are a vendor,register now to sell your products or services online',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                height: 1.5,
                color: Color(0xff2255bc),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 5.w, right: 5.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Basic Details",
                      style: GoogleFonts.poppins(
                          height: 2, fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        hintText: "Your Full Name*"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        hintText: "Mobile Number*"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        hintText: "Email*"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        hintText: "Your City*"),
                  ),
                )
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
                  name: "Discard",
                  navigation: () {
                    Get.back();
                  }),
              NextButton(
                name: "Next",
                navigation: () {
                  Get.to(VendorRoleRegistView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
