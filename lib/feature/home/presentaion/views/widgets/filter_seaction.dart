import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/check_container.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/row_filter_seaction.dart';

class FilterSeaction extends StatelessWidget {
  const FilterSeaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 5,
      children: [
                               Text(AppStrings.filterBy,style: CustomTextStyle.TitilliumWebBold16.copyWith(fontSize: 18),),
             
        Row(
          children: [
            Text("Delivered To  ",style: CustomTextStyle.regularArial,),
            Image.asset(AppAssetes.deliveryIcon),
    
                
          ],
        ),
                 CustomTextFormFiled(text: "All Areas"),
            RowFilterSeaction(text: "  offers"),
               RowFilterSeaction(text: "  free Delivery"),
      ],
    );
  }
}