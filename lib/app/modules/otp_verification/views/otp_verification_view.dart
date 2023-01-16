import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tijo_vendor/app/modules/vendor_basic_details/views/vendor_basic_details_view.dart';

import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'OTP Verification',
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
            'Enter the four digit verification code sent to your number',
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
          padding: EdgeInsets.only(
            top: 6.h,
            left: 9.w,
            right: 9.w,
          ),
          child: Container(
            // frameVzF (3:406)
            margin: EdgeInsets.fromLTRB(0, 0, 0, 50),

            height: 19.h,
            child: Image.asset(
              "assets/images/otp_login.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            gradient: LinearGradient(
              begin: Alignment(-0.147, 0.114),
              end: Alignment(-1, 0.114),
              colors: <Color>[
                Color.fromARGB(255, 16, 60, 147),
                Color.fromARGB(255, 17, 105, 156)
              ],
              stops: <double>[0, 1],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: Container(
                  child: OTPTextField(
                      otpFieldStyle: OtpFieldStyle(
                          backgroundColor: Color(0x99f3f3f3),
                          enabledBorderColor: Colors.grey),
                      length: 4,
                      width: MediaQuery.of(context).size.width,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: 60,
                      fieldStyle: FieldStyle.box,
                      outlineBorderRadius: 16,
                      style: TextStyle(fontSize: 17),
                      onChanged: (pin) {
                        print("Changed: $pin");
                      },
                      onCompleted: (pin) {
                        print("Completed: $pin");
                      }),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(VendorBasicDetailsView());
                },
                child: Container(
                  width: 90.w,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: Offset(0, 2),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Verify',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xff2255bc),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'By Clicking you agree to our Terms & Policy',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 212, 205, 205),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
