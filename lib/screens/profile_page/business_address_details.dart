import 'package:flutter/material.dart';

import '../../appcolors.dart';
import '../../size_config.dart';

class Business_Address_details extends StatelessWidget {
  const Business_Address_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 380,
        height: 615,
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Text(
                // textAlign: TextAlign.start,
                "Business Address Details",
                style: TextStyle(
                  fontFamily: "semibold",
                  color: AppColors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                top: getProportionateScreenHeight(15),
              ),
              child: Text(
                "Pincode",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "regular",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // text field for mail address
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hint: Text(
                    "Enter Your Pincode",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "semibold",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                top: getProportionateScreenHeight(15),
              ),
              child: Text(
                "Address",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "regular",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hint: Text(
                    "Enter Your Address",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "semibold",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                top: getProportionateScreenHeight(15),
              ),
              child: Text(
                "City",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "regular",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hint: Text(
                    "Enter Your City",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "semibold",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                top: getProportionateScreenHeight(15),
              ),
              child: Text(
                "State",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "regular",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hint: Text(
                    "Enter Your State",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "semibold",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                top: getProportionateScreenHeight(15),
              ),
              child: Text(
                "State",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "regular",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hint: Text(
                    "Enter Your State",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "semibold",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}