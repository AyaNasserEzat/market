import 'package:flutter/material.dart';


class CustomSmallContainr extends StatelessWidget {
  const CustomSmallContainr({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
     
       boxShadow: [
         BoxShadow(
        color: Colors.black.withOpacity(0.2),
        blurRadius: 2

      ),
       ]
      ),
      width: 80,
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(23),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
