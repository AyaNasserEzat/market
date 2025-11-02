import 'package:flutter/material.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/forget_password_form_section.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: ForgetPasswordFormSection()
          ),
        ),
      ),
    );
  }
}