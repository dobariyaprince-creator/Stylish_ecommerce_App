import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../appcolors.dart';
import '../../widgets/custom_button.dart';

class ForgotpassPage extends StatefulWidget {
  const ForgotpassPage({super.key});

  @override
  State<ForgotpassPage> createState() => _ForgotpassPageState();
}

class _ForgotpassPageState extends State<ForgotpassPage> {
  TextEditingController emailController = TextEditingController();

  /* this is reset password when user wants to reset there password so simply he reset hes password essay*/
 Future<void> reset() async {
  final email = emailController.text.trim();

  if (email.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Please enter your email address"),
      ),
    );
    return;
  }

  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: email,
    );

    print("RESET PASSWORD SUCCESSFUL ✅");

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Password reset email sent successfully 📧"),
      ),
    );
  } on FirebaseAuthException catch (e) {
    print("RESET PASSWORD FAILED ❌");
    print("Error code: ${e.code}");
    print("Error message: ${e.message}");

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(e.message ?? "Something went wrong"),
      ),
    );
  } catch (e) {
    print("UNKNOWN ERROR ❌ $e");
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 63, right: 140),
              child: SizedBox(
                width: 211,
                height: 69,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: "extraBold",
                    fontSize: 36,
                    height: 1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 50),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: AppColors.fill,
                  filled: true,
                  prefixIcon: Icon(Icons.person, color: Colors.grey.shade600),
                  hint: Text(
                    "Enter Your Email Address",
                    style: TextStyle(
                      fontFamily: "regular",
                      fontWeight: .w600,
                      color: AppColors.textQuaternary,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppColors.borderGrey,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 45),
              child: SizedBox(
                child: Text(
                  '* We will send you a message to set or reset\n  your new password',
                  style: TextStyle(
                    fontFamily: "regular",
                    fontWeight: .w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            CustomButton(
              text: 'Submit',
              width: 325,
              size: 18,
              onPressed: () async{
                await reset();
                print("RESET PASSWORD SUCCESSFUL ✅");
              },
            ),
          ],
        ),
      ),
    );
  }
}
