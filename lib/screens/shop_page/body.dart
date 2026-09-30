import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:stylish/appcolors.dart';
import 'package:stylish/routs/routs.dart';
import 'package:stylish/screens/shop_page/product_images.dart';
import 'package:stylish/screens/shop_page/product_size.dart';
import '../../model/product_size_model.dart';
import '../../size_config.dart';
import '../../widgets/custom_gradient_btn.dart';
import '../home_page/main_listview.dart';
import 'product_details.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  List<String> shopbanners = [
    "assets/images/unsplash.png",
    "assets/images/unsplash1.png",
    "assets/images/unsplash2.png",
  ];

 // final ScrollController _productScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Symbols.arrow_back_ios, size: 25),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: AppColors.grey.withOpacity(0.18),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context,AppRoutes.Checkout);
                },
                icon: Icon(
                  Symbols.shopping_cart,
                  size: 25,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImages(),
            /// show size which is selected
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 15),
              child:  Text(
                "Size: 6UK",
                style: const TextStyle(
                  fontFamily: "semibold",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            /// product size chart
            ProductSize(sizes: productSize, selectedIndex: 1),

            /// product name
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 15),
              child: Text(
                'Nike Sneakers',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "semibold",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            /// product description
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                "Vision Alta Men’s Shoes Size (All Colours)",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "medium",
                ),
              ),
            ),

            /// product details like price,rating,review
            product_details(),

            /// buy,add to cart button
            custom_gradient_btn(),

            /// delivery time section
            Padding(
              padding: EdgeInsets.only(
                top: getProportionateScreenHeight(14),
                left: getProportionateScreenHeight(14),
                right: getProportionateScreenWidth(14),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xFFFFCCD5),
                ),
                width: double.infinity,
                height: 60,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(8),
                    left: 14,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery in",
                        style: TextStyle(height:1.2,fontSize: 14, fontFamily: "semibold"),
                      ),
                      Text(
                        "1 Within Hour",
                        style: TextStyle(
                          fontSize: 21,
                          fontFamily: "semibold",
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(14)),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 175,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white,
                        border: BoxBorder.all(
                          color: AppColors.grey.withOpacity(0.25),
                        ),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "View Similar",
                          style: TextStyle(
                              fontFamily: "medium",
                              color: AppColors.black,
                              fontSize: 14
                          ),
                        ),
                        icon: Icon(
                          Symbols.eye_tracking_rounded,
                          color: AppColors.black,
                          size: 22,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 178,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white,
                        border: BoxBorder.all(
                          color: AppColors.grey.withOpacity(0.25),
                        ),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Add to Compare",
                          style: TextStyle(
                              fontFamily: "medium",
                              color: AppColors.black,
                              fontSize: 14
                          ),
                        ),
                        icon: Icon(
                          Symbols.compare,
                          color: AppColors.black,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14,top: 5),
              child: Text(
                "Similar To ",
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.black,
                  fontFamily: "semibold",
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 13),
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '282+ Items',
                    style: TextStyle(color:AppColors.black,fontSize: 18, fontFamily: "semibold"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: InkWell(onTap: (){},
                      child: Container(
                        width: 65,
                        height: 28,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.grey.withValues(alpha: 0.18),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Text(' Sort '),
                            Icon(Icons.swap_calls_sharp),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: InkWell(onTap: (){},
                      child: Container(
                        width: 67,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 0.16),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Text(' Filter '),
                            Icon(Icons.filter_alt_outlined),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 5),
              child: SizedBox(
                  width: double.infinity,
                  height: 241,
                  child: main_listview()),
            ),
          ],
        ),
      ),
    );
  }
}

