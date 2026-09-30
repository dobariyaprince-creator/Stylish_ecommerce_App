import 'package:flutter/material.dart';

import '../../appcolors.dart';
import '../../routs/routs.dart';

class Shopping_products_list extends StatelessWidget {
  const Shopping_products_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          Navigator.pushNamed(context, AppRoutes.placeorder);
      },
      child: Container(
        width: 360,
        height: 235,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.20),
              blurRadius: 8,
              offset: Offset(0,10),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 130,
                    height: 125,
                    child: Image.asset(
                      "assets/images/women_dress.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Women's Casual Wear",
                        style: TextStyle(
                          fontFamily: "semibold",
                          fontSize: 14,
                          fontWeight: .w800,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Variations :",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "regular",
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 45,
                            height: 20,
                            decoration: BoxDecoration(
                              border: BoxBorder.all(
                                color: AppColors.black,
                                width: .50,
                              ),
                              borderRadius: BorderRadius.circular(2),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.grey.withOpacity(0.20),
                                  blurRadius: 8,
                                  offset: Offset.fromDirection(50),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "Black",
                                style: TextStyle(fontFamily: "regular",fontWeight: .w600),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 45,
                            height: 20,
                            decoration: BoxDecoration(
                              border: BoxBorder.all(
                                color: AppColors.black,
                                width: .50,
                              ),
                              borderRadius: BorderRadius.circular(2),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.grey.withOpacity(0.20),
                                  blurRadius: 8,
                                  offset: Offset.fromDirection(50),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "Red",
                                style: TextStyle(fontFamily: "regular",fontWeight: .w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "4.8",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "regular",
                            ),
                          ),
                          SizedBox(width: 10),
                          Image.asset(
                            "assets/images/stars.png",
                            height: 15,
                            width: 110,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: BoxBorder.all(
                                color: AppColors.black,
                                width: .10,
                              ),
                            ),
                            width: 90,
                            height: 35,
                            child: Center(
                              child: Text(
                                "\$ 34.00",
                                style: TextStyle(
                                  fontFamily: "semibold",
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 80,
                            height: 35,
                            child: Column(
                              children: [
                                Text(
                                  "upto 33% off",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.error,
                                    fontFamily: "regular",
                                  ),
                                ),
                                Text(
                                  "\$ 64.00",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: AppColors.grey,
                                      decorationColor: AppColors.grey,
                                      fontSize: 14,
                                      fontFamily: "regular",
                                      fontWeight: .w700
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(width: 350,height: 1.5,color: AppColors.grey,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20,left: 15),
              child: Row(
                children: [
                  Expanded(flex: 18,child: Text("Total Order (1) :",style: TextStyle(fontFamily: "semibold"),)),
                  Expanded(flex: 5,child: Text("\$ 34.00",style: TextStyle(fontFamily: "semibold"),))
                ],),
            ),
          ],
        ),
      ),
    );
  }
}