import 'package:flutter/material.dart';

class OTPTextField extends StatefulWidget {
  final int fields;
  final onCompleted;
  final onChanged;
  final enabled;

  OTPTextField(
      {this.fields = 4, this.onCompleted, this.onChanged, this.enabled});

  @override
  _OTPTextFieldState createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  final List<String> _otp = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(widget.fields, (index) {
        return Container(
          width: 40,
          margin: EdgeInsets.only(right: 10),
          child: TextField(
            enabled: widget.enabled,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            onChanged: (value) {
              _otp.add(value);
              if (_otp.length == widget.fields) {
                widget.onCompleted(_otp.join());
              }
              widget.onChanged(_otp.join());
            },
          ),
        );
      }),
    );
  }
}
