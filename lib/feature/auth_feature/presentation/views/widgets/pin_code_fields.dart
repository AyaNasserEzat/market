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
  enableActiveFill: true,
  length: 4,
  obscureText: true, // يخلي التكست يظهر كنقطة ●
  obscuringCharacter: '●',
  animationType: AnimationType.fade,
  keyboardType: TextInputType.number,
  pinTheme: PinTheme(
    shape: PinCodeFieldShape.circle, // شكل دائري
    fieldHeight: 60,
    fieldWidth: 60,
    activeColor: AppColor.black,
    selectedColor: AppColor.black,
    inactiveColor: AppColor.black,
    inactiveFillColor: AppColor.gray,
    activeFillColor: AppColor.gray2,
    activeBorderWidth: 1,
    inactiveBorderWidth: 1
  ),
  onChanged: (value) {
    print(value);
  },
  onCompleted: (value) {
    print("Completed: $value");
  },
);
  }
}