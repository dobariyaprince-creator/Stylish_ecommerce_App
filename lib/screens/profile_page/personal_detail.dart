import 'package:flutter/material.dart';
import '../../appcolors.dart';
import '../../size_config.dart';


class Personal_Detail extends StatelessWidget {
  const Personal_Detail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 300,
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              // textAlign: TextAlign.start,
              "Personal Details",
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
              "Mail Address",
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
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hint: Text(
                  "Enter Your Email Address",
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
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(15),
              top: getProportionateScreenHeight(15),
            ),
            child: Text(
              "PassWord",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "regular",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                hint: Text(
                  "Enter PassWord",
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
    );
  }
}