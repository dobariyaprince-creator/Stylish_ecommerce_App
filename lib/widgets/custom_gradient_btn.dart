import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../appcolors.dart';
class custom_gradient_btn extends StatelessWidget {
  const custom_gradient_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 10),
      child: Row(
        children: [
          InkWell(
            child: Container(
              width: 136,
              height: 36,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: AlignmentGeometry.topCenter,
                  end: AlignmentGeometry.bottomCenter,
                  colors: [
                    Color(0xFF3F92FF),
                    Color(0xFF0B3689),
                  ],
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(4),
                    bottomLeft: Radius.circular(20)

                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: AlignmentGeometry.topLeft,
                        end: AlignmentGeometry.topRight,
                        colors: [
                          Color(0xFF3F92FF),
                          Color(0xFF0B3689),
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Symbols.shopping_cart,
                      color: AppColors.white,
                      size: 21,
                    ),
                  ),

                  const SizedBox(width: 6),

                  const Text(
                    "Go to Cart",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontFamily: "semibold",
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20,),
          InkWell(
            onTap: (){},
            child: Container(
              width: 136,
              height: 36,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF66E39A),
                    Color(0xFF20B967),
                  ],
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(4),
                    bottomLeft: Radius.circular(20)

                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Color(0xFF20B967),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Symbols.touch_app,
                      color: AppColors.white,
                      size: 23,
                    ),
                  ),

                  const SizedBox(width: 10),

                  const Text(
                    "Buy Now",
                    style: TextStyle(
                      color:AppColors.white,
                      fontSize: 16,
                      fontFamily: "semibold",
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}