import 'package:flutter/material.dart';
import 'package:stylish/appcolors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double size;


  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 55,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor:AppColors.error,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color:AppColors.white,
            fontFamily: "semibold",
            fontSize: size,
          ),
        ),
      ),
    );
  }
}
