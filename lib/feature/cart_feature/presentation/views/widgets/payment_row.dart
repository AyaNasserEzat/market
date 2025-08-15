import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/check_container.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    super.key,
    required this.image,
    required this.text,
    required this.index,
    required this.selectedIndex,
    required this.onSelected,
  });

  final String image;
  final String text;
  final int index;
  final int selectedIndex;
  final Function(int) onSelected;

  @override
  Widget build(BuildContext context) {
    return  Row
    (
      children: [
        SvgPicture.asset(image),
        SizedBox(width: 10.w,),
        Text(text,style: CustomTextStyle.TitilliumWebBold16,),
        Spacer(),
        CheckContainer(index:index ,isSelected: selectedIndex==index,onTap: () => onSelected(index), )
      ],
    );
  }
}