import 'package:flutter/material.dart';

class DashRow extends StatelessWidget {
  const DashRow({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
  children: List.generate(45, (index) {
    return Container(
      width: 6,
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      color: Colors.grey,
    );
  }));
  }
}