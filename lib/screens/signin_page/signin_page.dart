import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stylish/appcolors.dart';
import 'package:stylish/fonts/apptextstyles.dart';
import 'package:stylish/routs/routs.dart';
import 'package:stylish/screens/signup_page/social_auth.dart';
import '../../auth/apple_auth/apple_auth.dart';
import '../../auth/facebook_auth/facebook_auth.dart';
import '../../auth/google_auth/google_sign_in.dart';
import '../../widgets/custom_button.dart';
import '../forgotpass_page/forgotpass_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _obsecureText = true;

  // facebook Sign In

  /* this function is use for sign in with email & password in  firebase
   and when user need this data then it will show.
    */
  signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch(e){
      print("LOGIN FAILED ❌");
      print("Error code: ${e.code}");
      print("Error message: ${e.message}");
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(e.message ?? "Something went wrong"),
      ),
    );
    }finally{
      return 'LOGIN SUCCESSFUL ✅';
    }
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
                child: const SizedBox(
                  width: 184,
                  height: 68,
                  child: const Text(
                    'Welcome Back!',
                    style: AppTextStyles.heading,
                    // style: TextStyle(
                    //   fontFamily:
                    //   fontSize: 36,
                    //   height: 1,
                  ),
                ),
              ),
              // Email TextField
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
                child: TextFormField(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderGrey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fillColor: AppColors.fill,
                    filled: true,
                    prefixIcon: Icon(Icons.person, color: Colors.grey.shade600),
                    hint: Text(
                      'Username or Email',
                      style: TextStyle(
                        fontFamily: "regular",
                        fontWeight: .w600,
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
                  validator:(value) {
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
              // Password TextField
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 32, right: 32),
                child: TextFormField(
                  onTap: () {
                    setState(() {
                      _obsecureText = !_obsecureText;
                    });
                  },
                  obscureText: _obsecureText,
                  controller: passwordController,

                  autovalidateMode: AutovalidateMode.onUserInteraction,
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
                      'PassWord',
                      style: TextStyle(
                        fontFamily: "regular",
                        fontWeight: .w600,
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
              ),
              //Forgot Password Text button
              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotpassPage()),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: AppColors.error),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Center(
                child: CustomButton(
                  size: 18,
                  width: 325,
                  text: 'Login',
                  onPressed: (() => signIn()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 128),
                child: const Text(
                  '-OR Continue With-',
                  style: TextStyle(
                    fontFamily: "semibold",
                    fontSize: 13,
                    color: AppColors.textQuaternary,
                  ),
                ),
              ),
              Social_Auth(
                google: (() {
                  signInWithGoogle();
                  print("GOOGLE LOGIN SUCCESSFUL ✅");
                  setState(() {

                  });
                }),
                apple: (() {
                  AppleAuth();
                  print("APPLE LOGIN SUCCESSFUL ✅");
                   setState(() {

                  });
                }),
                facebook: (() {
                  facebookLogin();
                  print("FACEBOOK LOGIN SUCCESSFUL ✅");
                   setState(() {

                  });
                }),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Create An Account ',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'regular',
                      color: AppColors.textQuaternary,
                      fontWeight: .w800,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.signup);
                      if (_formKey.currentState!.validate()) {
                        print(
                          "Successful Login with email: ${emailController.text} ✅",
                        );
                      } else {
                        return print("Invalid Email ");
                      }
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.error,
                        color: AppColors.error,
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
