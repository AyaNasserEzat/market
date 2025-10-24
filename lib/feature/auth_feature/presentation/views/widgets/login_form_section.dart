import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/database/api/dio_concumer.dart';
import 'package:pure_soft/core/helper/function/snack_bar.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/auth_feature/data/remote_data_soures/auth_remote_data_source.dart';
import 'package:pure_soft/feature/auth_feature/data/repo/auth_repo_imp.dart';
import 'package:pure_soft/feature/auth_feature/presentation/cubit/auth_cubit.dart';
import 'package:pure_soft/feature/auth_feature/presentation/cubit/auth_state.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_row.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';

class LoginFormSection extends StatelessWidget {
  const LoginFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
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
            children: [
               CustomRow(text: AppStrings.mobileNumberWithWhatspp),
                            
                       //PhoneWithWhatsapTextFiled(),
                           CustomTextFormFiled(text: AppStrings.mobileNumber,controller:cubit.loginPhoneController ,),
                        CustomRow(text: AppStrings.password),
                        CustomTextFormFiled(text: AppStrings.password,controller: cubit.loginPasswordController,),
                        GestureDetector(
                          onTap: () {
                            context.go("/forgetPassword");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                AppStrings.forgetPassword,
                                style: TextStyle(
                                  color: AppColor.blue,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColor.blue
                                  
                                ),
                              ),
                            ],
                          ),
                        ),
                      state is AuthLoading? CircularProgressIndicator(): CustomButton(onpressed: () {
                        cubit.login();
                         
                        }, text: AppStrings.login) 
                        
            ],
          );
        }, listener: (BuildContext context, AuthState state) { 
          if(state is AuthError){
showSnackBar(state.message, context);
          }
          if(state is LoginSuccess){
           context.go("/bottom");  
          }
         },
      ),
    );
  }
}