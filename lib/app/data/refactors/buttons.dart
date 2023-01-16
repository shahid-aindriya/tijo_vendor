import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BackButtons extends StatelessWidget {
  String name;
  Function() navigation;
  BackButtons({
    required this.name,
    required this.navigation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigation,
      child: Container(
        width: 44.w,
        height: 51,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 228, 239, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            // BoxShadow(
            //   color: Color(0x26000000),
            //   offset: Offset(0, 2),
            //   blurRadius: 5,
            // ),
          ],
        ),
        child: Center(
          child: Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 1.5,
              color: Color(0xff2255bc),
            ),
          ),
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  String name;
  Function() navigation;
  NextButton({
    required this.name,
    required this.navigation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigation,
      child: Container(
        width: 44.w,
        height: 51,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.147, 0.114),
            end: Alignment(-1, 0.114),
            colors: <Color>[
              Color.fromARGB(255, 16, 60, 147),
              Color.fromARGB(255, 17, 105, 156)
            ],
            stops: <double>[0, 1],
          ),
          color: Color.fromARGB(255, 228, 239, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            // BoxShadow(
            //   color: Color(0x26000000),
            //   offset: Offset(0, 2),
            //   blurRadius: 5,
            // ),
          ],
        ),
        child: Center(
          child: Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 1.5,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }
}
