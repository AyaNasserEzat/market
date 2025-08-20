import 'package:flutter/widgets.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/check_container.dart';

class RowFilterSeaction extends StatelessWidget {
  const RowFilterSeaction({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return               Row(
                  children: [
                    CheckContainer(index: 4, isSelected: false, onTap: (){}),
                    Text(text,style: CustomTextStyle.regularTitilliumWeb,)
                  ],
    );
  }
}