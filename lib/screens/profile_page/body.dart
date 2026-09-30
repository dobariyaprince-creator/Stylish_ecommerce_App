import 'package:flutter/material.dart';
import 'package:stylish/appcolors.dart';
import 'package:stylish/routs/routs.dart';
import 'package:stylish/screens/profile_page/personal_detail.dart';
import 'package:stylish/widgets/custom_button.dart';
import '../../size_config.dart';
import 'business_address_details.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: GestureDetector(
                  onTap: () {
                    print("Image tapped");
                  },
                  child: Container(
                    width: 97,
                    height: 97,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(50),
                      color: Colors.blue,
                      border: BoxBorder.all(color: Colors.black54),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.50),
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        AspectRatio(
                          aspectRatio: 5,
                          child: Image.asset(
                            "assets/images/profilepic2.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70, left: 68),
                          child: CircleAvatar(
                            radius: 13,
                            backgroundColor: AppColors.blue,
                            child: Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // this is personal details text
            Center(child: Personal_Detail()),
            Padding(
              padding: const EdgeInsets.only(left: 235),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.Forgotpass);
                },
                child: Text(
                  "Change Password",
                  style: TextStyle(
                    decorationColor: AppColors.textSecondary,
                    decoration: TextDecoration.underline,
                    fontFamily: "semibold",
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Container(
                width: 348,
                height: 1.5,
                color: AppColors.borderGrey,
              ),
            ),
            Business_Address_details(),
            SizedBox(height: 45),
            Center(
              child: Container(
                width: 348,
                height: 1.5,
                color: AppColors.borderGrey,
              ),
            ),
            SizedBox(height: 35),

            Center(
              child: Container(
                width: 380,
                height: 400,
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        // textAlign: TextAlign.start,
                        "Bank Account Details",
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
                        "Bank Account Number",
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
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hint: Text(
                            "Enter Your Account Number",
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
                        "Account Holder's Name",
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
                            "Enter Account Holder Name",
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
                        "IFSC Code",
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
                            "Enter IFSC code",
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
            ),
            const SizedBox(height: 10,),
            Center(
                child: CustomButton(
                  size: 18,
                    text: "Save",
                    width: 350,
                    onPressed:(){
                      Navigator.pushNamed(context, AppRoutes.Shoppinglist);
                    }
                ),
            ),
          ],
        ),
      ),
    );
  }
}
