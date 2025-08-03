
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class TermAndCondation extends StatelessWidget {
  const TermAndCondation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
                title: Text(AppStrings.termAndCondation, style: CustomTextStyle.poppins),
        centerTitle: true,
        leading: IconButton(onPressed: () {
          context.pop();
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
 const Text(
  """Welcome to our application. By using this app, you agree to comply with and be bound by the following terms and conditions. Please read them carefully before using any part of the app.

By accessing the app, you confirm that you accept these terms. If you do not agree, you must not use the app.

You may only use the app for lawful, personal purposes. Any misuse, such as attempting to interfere with its operation or gain unauthorized access, is strictly prohibited.

All content in the app, including text, graphics, logos, icons, and images, is the property of the app or its partners and is protected by intellectual property laws. You may not copy, reproduce, or redistribute any part of the app without written permission.

Some features may require you to create an account. You must provide accurate, current information and keep your account secure. You are fully responsible for any activity that occurs under your account.

We respect your privacy. Any personal information you provide will be handled according to our Privacy Policy, which explains how we collect, store, and use your data.

If the app includes paid products or services, all purchases are final and subject to the terms shown at checkout. Prices may change without notice, and you are responsible for any applicable taxes or fees.

We may suspend or terminate access to the app at any time if we believe that you have violated these terms or engaged in harmful behavior.

These terms may be updated occasionally. Your continued use of the app after any changes means you accept the updated terms.

We do not guarantee uninterrupted access to the app and are not responsible for any damages that result from the use or inability to use the app.

If you have any questions or concerns about these Terms and Conditions, please contact us at support@example.com.""",
  style: TextStyle(fontSize: 16),
),

            ],
          ),
        ),
      ),
    );
  }
}