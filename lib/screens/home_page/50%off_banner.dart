import 'package:flutter/material.dart';
import 'package:stylish/appcolors.dart';

import '../../size_config.dart';
class SponserBanner extends StatefulWidget {
  const SponserBanner({super.key});

  @override
  State<SponserBanner> createState() => _SponserBannerState();
}

class _SponserBannerState extends State<SponserBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15),
      child: Container(
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
        width: 383,
        height: 382,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 8),
              child: Text(
                'Sponserd',
                style: TextStyle(
                  color: AppColors.black,
                  fontFamily: "medium",
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4,left: 15),
              child: Image.asset(
                "assets/images/50%offbanner.png",
                width: 383,
                height: 292,
                fit: BoxFit.fill,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Text(
                    'up to 50% Off',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: getProportionateScreenWidth(18),
                      fontFamily: "semibold",
                      fontWeight: .w800
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios,
                      color: AppColors.black,
                      size: getProportionateScreenWidth(16)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
