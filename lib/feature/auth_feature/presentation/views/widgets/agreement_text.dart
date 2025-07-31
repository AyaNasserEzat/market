import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreementText extends StatelessWidget {
  const AgreementText({super.key});

  @override
  Widget build(BuildContext context) {
    return  
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'By continue you agree ',
                  style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'our Terms of Service\n',
                      style: const TextStyle(color: Colors.blue),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                             
                            },
                    ),
                    const TextSpan(
                      text: '              and ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'our Privacy Policy',
                      style: const TextStyle(color: Colors.blue),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                             
                            },
                    ),
                  ],
                ),
              );
  }
}