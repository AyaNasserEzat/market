import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class PhoneWithWhatsapTextFiled extends StatefulWidget {
  const PhoneWithWhatsapTextFiled({super.key});

  @override
  State<PhoneWithWhatsapTextFiled> createState() => _PhoneWithWhatsapTextFiledState();
}

class _PhoneWithWhatsapTextFiledState extends State<PhoneWithWhatsapTextFiled> {
  String selectedCode = 'KW';

  final List<String> countryCodes = ['KW', 'EG', 'SA', 'AE'];

  @override
  Widget build(BuildContext context) {
    return  
          // حقل الهاتف + Dropdown
          Container(
            decoration: BoxDecoration(
            color: AppColor.white,
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: AppColor.black.withOpacity(.2),
                  blurRadius: 2
                )
              ]
            ),
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedCode,
                    items: countryCodes.map((code) {
                      return DropdownMenuItem(
                        value: code,
                        child: Text(code),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCode = value!;
                      });
                    },
                  ),
                ),
                Container(width: .5, color: AppColor.gray,height: 40,),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Mobile Number',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}