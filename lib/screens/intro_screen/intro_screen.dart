import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:stylish/appcolors.dart';
import 'package:stylish/routs/routs.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<PageViewModel> listPageViewModel = [
    PageViewModel(
      image: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Image.asset('assets/images/intro_img_3.png'),
      ),
      titleWidget: Text(
        'Choose Products',
        style: TextStyle(fontFamily: "extrabold", fontSize: 24),
      ),
      bodyWidget: Text(
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "semibold",
          fontSize: 14,
          fontWeight: FontWeight.w800,
          color: AppColors.textQuaternary,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        'Make Payment',
        style: TextStyle(fontFamily: "extrabold", fontSize: 24),
      ),
      bodyWidget: Text(
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "semibold",
          fontSize: 14,
          fontWeight: FontWeight.w800,
          color: AppColors.textQuaternary,
        ),
      ),
      image: Image.asset('assets/images/intro_img_2.png'),
    ),
    PageViewModel(
      image: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Image.asset('assets/images/intro_img_1.png'),
      ),
      titleWidget: Text(
        'Get Your Order',
        style: TextStyle(fontFamily: "extrabold", fontSize: 24),
      ),
      bodyWidget: Text(
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "semibold",
          fontSize: 14,
          fontWeight: FontWeight.w800,
          color: AppColors.textQuaternary,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 500,
        child: IntroductionScreen(
          dotsDecorator: DotsDecorator(
            activeColor: Colors.black87,
            spacing: EdgeInsets.only(left: 4),
            activeSize: Size(40, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(30),
            ),
          ),
          pages: listPageViewModel,
          back: Text(
            'Prev',
            style: TextStyle(
              fontFamily: "extrabold",
              color: AppColors.textSecondary,
            ),
          ),
          showBackButton: true,
          showDoneButton: true,
          showNextButton: true,
          done: Text(
            'Get Started',
            style: TextStyle(
              fontFamily: "extrabold",
              color: AppColors.textSecondary,
            ),
          ),
          next: Text(
            'Next',
            style: TextStyle(
              fontFamily: "extrabold",
              color: AppColors.textSecondary,
            ),
          ),
          onDone: () {
            Navigator.pushNamed(context, AppRoutes.wrapper);
          },
        ),
      ),
    );
  }
}
