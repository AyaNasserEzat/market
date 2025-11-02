import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/database/api/dio_concumer.dart';
import 'package:pure_soft/core/helper/function/snack_bar.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/auth_feature/data/remote_data_soures/auth_remote_data_source.dart';
import 'package:pure_soft/feature/auth_feature/data/repo/auth_repo_imp.dart';
import 'package:pure_soft/feature/auth_feature/presentation/cubit/auth_cubit.dart';
import 'package:pure_soft/feature/auth_feature/presentation/cubit/auth_state.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/auth_header.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_row.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';

class ForgetPasswordFormSection extends StatelessWidget {
  const ForgetPasswordFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider
    (
      create: (context) => AuthCubit(AuthRepoImp(
              authRemoteDataSource: AuthRemoteDataSourceImp(
                api: DioConcumer(dio: Dio()),
              ),
            ),),
      child: BlocConsumer<AuthCubit,AuthState>(
        builder: (context,state) {
          final cubit=BlocProvider.of<AuthCubit>(context);
          return Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       SizedBox(height: 24),
                      AuthHeader(text: AppStrings.signUpTitle),
                       SizedBox(height: 32),
             
            CustomRow(text: "Phone"),
         // PhoneWithWhatsapTextFiled(),
         CustomTextFormFiled(text: AppStrings.forgetPassword,controller: cubit.emailController,),
                       SizedBox(height: 16),
                      CustomButton(text: AppStrings.submit, onpressed: () {
                        cubit.forgetPassword();
                

                      },),
                      SizedBox(height: 20,),
               
                    ],
                  );
        }, listener: (BuildContext context, AuthState state) { 
          if(state is ForgetPasswordSuccess){
    context.go("/otp");
          }
          if(state is AuthError){
            showSnackBar(state.message, context);
          }
         },
      ),
    );
  }
}