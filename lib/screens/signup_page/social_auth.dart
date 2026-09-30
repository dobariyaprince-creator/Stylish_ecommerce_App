import 'package:flutter/material.dart';
import 'package:stylish/appcolors.dart';

class Social_Auth extends StatelessWidget {
  final VoidCallback google;
  final VoidCallback apple;
  final VoidCallback facebook;
  const Social_Auth({
    super.key,
    required this.apple,
    required this.facebook,
    required this.google,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 105, top: 15),
      child: Row(
        children: [
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red.shade50,
              border: BoxBorder.all(color: AppColors.error),
            ),
            child: TextButton(
              onPressed: google,
              child: Image.asset("assets/images/google.png"),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red.shade50,
              border: BoxBorder.all(color: AppColors.error),
            ),
            child: TextButton(
              onPressed: apple,
              child: Image.asset("assets/images/apple.png"),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red.shade50,
              border: BoxBorder.all(color: AppColors.error),
            ),
            child: TextButton(
              onPressed:facebook,
              child: Image.asset("assets/images/facebook.png"),
            ),
          ),
        ],
      ),
    );
  }
}