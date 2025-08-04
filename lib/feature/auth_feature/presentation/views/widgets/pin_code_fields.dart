import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class PinCodeFields extends StatefulWidget {
  const PinCodeFields({super.key});

  @override
  State<PinCodeFields> createState() => _PinCodeFieldsState();
}

class _PinCodeFieldsState extends State<PinCodeFields> {
  @override
  Widget build(BuildContext context) {
    return  
PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: true,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 55,
                    fieldWidth: 55,
                    activeFillColor: AppColor.grayf9,
                    inactiveFillColor: const Color(0xFFF0F0F0),
                    selectedFillColor: AppColor.grayf9,
                    activeColor: AppColor.gray,
                    selectedColor: AppColor.gray,
                    inactiveColor: Colors.grey,
                    borderWidth: 90
                    
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  textStyle: TextStyle(
                    color: AppColor.gray
                  ),
                  onCompleted: (v) {
                    print("Completed: $v");
                  },
                  onChanged: (value) {
                    print(value);
                  },
                );
  }
}