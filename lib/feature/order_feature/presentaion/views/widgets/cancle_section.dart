import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';
import 'package:pure_soft/feature/profile/presentation/views/widgets/message_container.dart';

class CancleSection extends StatelessWidget {
  const CancleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
                       Text(AppStrings.cancleOrder,style: CustomTextStyle.TitilliumWebBold16.copyWith(fontSize: 18),),
              Align(
                alignment: Alignment.topLeft,
                child: Text(AppStrings.reason,style: CustomTextStyle.regularArial,)),
              CustomTextFormFiled(text: ""),
                        Align(
                               alignment: Alignment.topLeft,
                          child: Text(AppStrings.notes,style: CustomTextStyle.regularArial,)),
          MessageContainer(height: 77.h,),
      ],
    );
  }
}