import 'package:flutter/material.dart';

import '../../appcolors.dart';
class product_details extends StatelessWidget {
  const product_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14,top: 10),
      child: Container(
        width: 343,
        height: 226,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/stars_big.png"),
            SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: "₹2,999  ",
                style: TextStyle(
                  fontFamily: "medium",
                  decoration: TextDecoration.lineThrough,
                  fontSize: 14,
                  color: AppColors.textQuaternary,
                ),
                children: [
                  TextSpan(
                    text: "  ₹1,500",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      color: AppColors.black,
                      fontFamily: "medium",
                    ),
                  ),
                  TextSpan(
                    text: "   50% off  \n",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: AppColors.error,
                      fontFamily: "medium",
                    ),
                  ),
                  TextSpan(
                    text: "Product Details\n",
                    style: TextStyle(
                      height: 1.8,
                      decoration: TextDecoration.none,
                      fontFamily: "medium",
                      fontWeight: .w700,
                      fontSize: 14,
                      color: AppColors.black,
                    ),
                  ),
                  TextSpan(
                    text:
                    "Perhaps the most iconic sneaker of all-time, this original\n'"
                        "Chicago'? colorway is the cornerstone to any sneaker\n"
                        "collection. Made famous in 1985 by Michael Jordan, the\n"
                        "shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw"
                        "\nthe ...More",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "regular",
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis,
                      decoration: TextDecoration.none,
                      color: AppColors.black,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
            /// product details like location,return policy,vip
            // product_details(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               InkWell(
                  onTap: () {
                    print('INKWELL BUTTON TAPPED !!');
                  },
                  child: Container(
                    width: 110,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: BoxBorder.all(color: Colors.grey.shade600),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 20,
                          color: Colors.grey.shade600,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            'Nearest Store',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 11,
                              fontFamily: "semibold",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: () {
                    print('INKWELL BUTTON TAPPED !!');
                  },
                  child: Container(
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: BoxBorder.all(color: Colors.grey.shade600),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.lock_outline_rounded,
                          size: 20,
                          color: Colors.grey.shade600,
                        ),
                        Text(
                          'VIP',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 12,
                            fontFamily: "semibold",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: () {
                    print('INKWELL BUTTON TAPPED !!');
                  },
                  child: Container(
                    width: 110,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: BoxBorder.all(color: AppColors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.sync,
                          size: 20,
                          color: AppColors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            'Return Policy',
                            style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 11,
                              fontFamily: "semibold",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}