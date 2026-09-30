import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:stylish/appcolors.dart';
class HotSaleCart extends StatefulWidget {
  const HotSaleCart({super.key});

  @override
  State<HotSaleCart> createState() => _HotSaleCartState();
}

class _HotSaleCartState extends State<HotSaleCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      height: 270,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.circular(8),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColors.borderGrey.withOpacity(0.15),
                  blurRadius: 8,
                  offset: Offset(2, 0)
              )
            ]
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,width: 365,
            child:
            Image.asset("assets/images/hot_sale.png",
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 110, top: 12,left: 12,
                    ),
                    child: Text(
                      'New Arrivals',
                      style: TextStyle(
                        fontSize: 20,
                        height: 0,
                        fontFamily: "semibold",
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12,top: 2),
                    child: Text(
                      "Summer's 25 Collections",
                      style: TextStyle(
                        fontSize: 16,
                        height: 0,
                        fontFamily: "regular",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 100,
                        height: 33,
                        decoration: BoxDecoration(
                          color: AppColors.error,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  fontFamily: "semibold",
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                            Icon(
                              Symbols.arrow_forward,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
