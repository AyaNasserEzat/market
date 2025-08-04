import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_color.dart';

class PhoneWithWhatsapTextFiled extends StatefulWidget {
   PhoneWithWhatsapTextFiled({super.key});
  String selectedCode = 'KW';

  final List<String> countryCodes = ['KW', 'EG', 'SA', 'AE'];
  @override
  State<PhoneWithWhatsapTextFiled> createState() => _PhoneWithWhatsapTextFiledState();
}

class _PhoneWithWhatsapTextFiledState extends State<PhoneWithWhatsapTextFiled> {


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
          PopupMenuButton<String>(
            icon: Icon(Icons.keyboard_arrow_down, size: 32, color: AppColor.gray),
            onSelected: (String newValue) {
              setState(() {
                widget.selectedCode = newValue;
              });
            },
            itemBuilder: (BuildContext context) {
              return widget.countryCodes.map((String code) {
                return PopupMenuItem<String>(value: code, child: Text(code));
              }).toList();
            },
          ),
          Text(widget.selectedCode),
          SizedBox(width: 10),
          Container(width: .3, height: 40, color: AppColor.gray),

          const SizedBox(width: 8),
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