import 'package:flutter/material.dart';
import 'package:stylish/appcolors.dart';
import 'package:stylish/routs/routs.dart';
import 'package:stylish/widgets/custom_button.dart';

class GetstartedPage extends StatefulWidget {
  const GetstartedPage({super.key});

  @override
  State<GetstartedPage> createState() => _GetstartedPageState();
}

class _GetstartedPageState extends State<GetstartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Wrap(
            children: [
              Image.asset(
                'assets/images/getstarted.png',
                width: 395,
                height: 870,
                fit: BoxFit.fill,
              ),
            ],
          ),
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Image.asset(
              'assets/images/Rectangle.png',
              width: 395,
              height: 362,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 580, left: 40),
            child: SizedBox(
              width: 315,
              height: 123,
              child: Text(
                'You want Authentic, here you go!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.1,
                  fontFamily: "semibold",
                  color: AppColors.white,
                  fontSize: 34,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 710, left: 105),
            child: Text(
              'Find it Here Buy it Now! ',
              style: TextStyle(
                fontFamily: "regular",
                fontWeight: .w600,
                color: AppColors.white,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: CustomButton(text: "Get Started", size:18,onPressed: (){
                Navigator.pushNamed(context, AppRoutes.bottomNavBar);
              }, width: 325,),
            ),
          ),
        ],
      ),
    );
  }
}
