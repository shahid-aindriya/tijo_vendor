import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tijo_vendor/app/modules/otp_verification/views/otp_verification_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Vendor Login',
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
            padding: EdgeInsets.only(
              top: 6.h,
              left: 9.w,
              right: 9.w,
            ),
            child: Container(
              // frameVzF (3:406)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),

              height: 24.h,
              child: Image.asset(
                "assets/images/Frame.png",
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
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  child: TextFormField(
                    enabled: true,
                    style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: InputDecoration(
                        prefixStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 17),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(top: 15.0, left: 10),
                          child: Wrap(children: [
                            Image.asset('assets/images/flag.png'),
                            Text(
                              " +91 ",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )
                          ]),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 10),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                                width: 0,
                                color: Color.fromARGB(255, 199, 199, 179))),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0,
                                color: Color.fromARGB(255, 91, 94, 91)),
                            borderRadius: BorderRadius.circular(16)),
                        fillColor: Color(0x99f3f3f3),
                        focusColor: Color.fromARGB(255, 231, 231, 231)),
                    validator: (value) {
                      if (!RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$')
                              .hasMatch(value!) ||
                          value.length < 3) {
                        return 'please enter valid email';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(OtpVerificationView());
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
                        'Login',
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
                // ElevatedButton(
                //   style: ButtonStyle(
                //     elevation: MaterialStateProperty.all(20),
                //     minimumSize: MaterialStateProperty.all(Size(100, 50)),
                //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //         RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(15),
                //     )),
                //     backgroundColor: MaterialStateProperty.all<Color>(
                //       Color(0xffffffff),
                //     ),
                //   ),
                //   onPressed: () async {},
                //   child: Padding(
                //     padding: EdgeInsets.symmetric(horizontal: 30),
                //     child: Text(
                //       'Login',
                //       style: GoogleFonts.ubuntu(
                //           color: Color.fromARGB(255, 0, 0, 0)),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
