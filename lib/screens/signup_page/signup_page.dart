import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stylish/appcolors.dart';
import 'package:stylish/screens/signup_page/social_auth.dart';
import 'package:stylish/widgets/custom_button.dart';
import 'package:stylish/wrapper/wrapper.dart';
import '../../auth/apple_auth/apple_auth.dart';
import '../../auth/facebook_auth/facebook_auth.dart';
import '../../auth/google_auth/google_sign_in.dart';
import '../../routs/routs.dart';
import 'package:get/get.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  bool _obsecureText = true;
  bool _obsecureText1 = true;

  signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
    Get.offAll(()=>Wrapper());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 63),
                child: SizedBox(
                  width: 230,
                  height: 68,
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                      fontFamily: "extrabold",
                      fontSize: 36,
                      height: 1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                 border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderGrey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fillColor: AppColors.fill,
                    filled: true,
                    prefixIcon: Icon(Icons.person, color: Colors.grey.shade600),
                    hint: Text(
                      "Username of Email",
                      style: TextStyle(
                        fontFamily: "regular",
                        fontWeight: FontWeight.w600,
                        color: AppColors.textQuaternary,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderGrey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.borderGrey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                     return 'Please enter email';
                    }
                    if(!value.contains('@')){
                      return 'Please enter valid email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 32, right: 32),
                child: TextFormField(
                  maxLength: 8,
                  onTap: () {
                    setState(() {
                      _obsecureText = !_obsecureText;
                    });
                  },
                  obscureText: _obsecureText,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                     border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderGrey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fillColor: AppColors.fill,
                    filled: true,
                    suffixIcon: Icon(
                      _obsecureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey.shade600,
                    ),
                    prefixIcon: Icon(Icons.lock, color: Colors.grey.shade600),
                    hint: Text(
                      "PassWord",
                      style: TextStyle(
                        fontFamily: "regular",
                        fontWeight: FontWeight.w600,
                        color: AppColors.textQuaternary,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderGrey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.borderGrey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter password';
                    }
                    if(value.length < 6){
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 32, right: 32),
                child: TextFormField(
                  onTap: () {
                    setState(() {
                      _obsecureText1 = !_obsecureText1;
                    });
                  },
                  maxLength: 8,
                  obscureText: _obsecureText1,
                  controller: confirmpassController,
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                     border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderGrey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fillColor: AppColors.fill,
                    filled: true,
                    suffixIcon: Icon(
                      _obsecureText1
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.grey.shade600,
                    ),
                    prefixIcon: Icon(Icons.lock, color: Colors.grey.shade600),
                    hint: Text(
                      "Confirm PassWord",
                      style: TextStyle(
                        fontFamily: "regular",
                        fontWeight: FontWeight.w600,
                        color: AppColors.textQuaternary,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderGrey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter password';
                    }
                    if(value.length < 6){
                      return 'Password must be at least 6 characters';
                    }
                    if(value != passwordController.text){
                      return 'Password does not match';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 15),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  children: <Widget>[
                    Text(
                      'By clicking the ',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "regular",
                        fontWeight: FontWeight.w600,
                        color: AppColors.textQuaternary,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {
                        print('Register tapped');
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.error,
                          fontFamily: "regular",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      'button, you agree to the public offer.',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "regular",
                        fontWeight: FontWeight.w600,
                        color: AppColors.textQuaternary,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: CustomButton(
                  onPressed: (() => signUp()),
                  size: 18,
                  width: 325,
                  text: 'Create Account',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 128),
                child: Text(
                  '-OR Continue With-',
                  style: TextStyle(
                    fontFamily: "semibold",
                    fontSize: 13,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),

              /// this is social auth section that show google, apple, facebook auth options
              Social_Auth(
                google: (() => signInWithGoogle()),
                apple: (() => AppleAuth()),
                facebook: (() => facebookLogin()),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I Already Have An Account ',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'semibold',
                      color: Colors.grey.shade600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.signIn);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                        color: Colors.red,
                        fontFamily: "semibold",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
