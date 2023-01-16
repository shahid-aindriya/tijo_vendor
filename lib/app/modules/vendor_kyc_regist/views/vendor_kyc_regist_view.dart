import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/vendor_kyc_regist_controller.dart';

class VendorKycRegistView extends GetView<VendorKycRegistController> {
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
                width: 49.98.w,
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
                      "Office KYC",
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
                        hintText: "Office Name*"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        hintText: "Phone Number*"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        hintText: "Alternate Phone Number*"),
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
    );
  }
}
