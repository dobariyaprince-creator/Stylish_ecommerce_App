
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../../screens/home_page/home_page.dart';

Future<void> facebookLogin() async {
  try {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      final accessToken = result.accessToken;

      final credential = FacebookAuthProvider.credential(
        accessToken!.tokenString,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      print("FACEBOOK LOGIN SUCCESSFUL ");

      Get.offAll(() => const HomePage());
    } else {
      print("Facebook Login Cancelled");
    }
  } catch (e) {
    print("Facebook Error: $e");
  }
}