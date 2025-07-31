import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/custom_container.dart';

class LoginButtonSection extends StatelessWidget {
  const LoginButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
              CustomContainer(
                widget: Icon(Icons.phone),
                icon: Icons.phone,
                text: "Sign in with Phone number",
                color: AppColor.white,
                    textcolor: AppColor.black,
              ),
              CustomContainer(
    textcolor: AppColor.black,
                widget: Image.asset("assets/images/google_icon.png"),
                color: AppColor.white,
                icon: Icons.face, text: "Sign in with Google"),
              CustomContainer(
                widget: Image.asset("assets/images/facbook_icon.png"),
                color: AppColor.blue,
                icon: Icons.facebook,
                text: "Sign in with Facbook",
                textcolor: AppColor.white,
              ),
      ],
    );
  }
}