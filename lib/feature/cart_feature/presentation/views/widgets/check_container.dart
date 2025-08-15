import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class CheckContainer extends StatelessWidget {
  const CheckContainer({
    super.key,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 34,
        decoration: BoxDecoration(
          color: isSelected ? AppColor.green : AppColor.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? AppColor.green : AppColor.black,
          ),
        ),
        child: isSelected
            ? Icon(Icons.check, color: AppColor.white, size: 16)
            : const SizedBox(),
      ),
    );
  }
}
