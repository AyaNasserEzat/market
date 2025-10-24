import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/database/api/dio_concumer.dart';
import 'package:pure_soft/core/utils/app_color.dart';

import 'package:pure_soft/core/utils/app_strings.dart';

import 'package:pure_soft/feature/auth_feature/data/remote_data_soures/auth_remote_data_source.dart';
import 'package:pure_soft/feature/auth_feature/data/repo/auth_repo_imp.dart';
import 'package:pure_soft/feature/auth_feature/presentation/cubit/auth_cubit.dart';
import 'package:pure_soft/feature/auth_feature/presentation/cubit/auth_state.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_row.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';

class SignUpFormSection extends StatelessWidget {
  const SignUpFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => AuthCubit(
            AuthRepoImp(
              authRemoteDataSource: AuthRemoteDataSourceImp(
                api: DioConcumer(dio: Dio()),
              ),
            ),
          ),
      child: BlocConsumer<AuthCubit, AuthState>(
        builder: (context, state) {
          final cubit = BlocProvider.of<AuthCubit>(context);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              CustomRow(text: AppStrings.fullName),
              CustomTextFormFiled(
                text: AppStrings.Name,
                controller: cubit.nameController,
              ),
              CustomRow(text: AppStrings.mobileNumberWithWhatspp),
              CustomTextFormFiled(
                text: AppStrings.mobileNumber,
                controller: cubit.phoneController,
              ),
              //PhoneWithWhatsapTextFiled(),
              CustomRow(text: AppStrings.password),
              CustomTextFormFiled(
                text: AppStrings.password,
                controller: cubit.passwordController,
              ),
              SizedBox(height: 16),

              state is AuthLoading
                  ? CircularProgressIndicator()
                  : CustomButton(
                    text: AppStrings.signUp,
                    onpressed: () async{
                     await BlocProvider.of<AuthCubit>(context).register();
                    
                    },
                  ),
            ],
          );
        },
        listener: (BuildContext context, AuthState state) {
          if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: 
                 
          Text(state.message),
                
              ),
            );

          }
                      if(state is RegisterSuccess){
                context.push("/home");
            }
        },
      ),
    );
  }
}
