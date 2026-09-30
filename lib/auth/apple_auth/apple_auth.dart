import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Apple Sign In
  Future<UserCredential?> signInWithApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      final userCredential = await _auth.signInWithCredential(oauthCredential);

      // Apple may only provide name on the first login
      final fullName = [
        appleCredential.givenName,
        appleCredential.familyName,
      ].where((e) => e != null && e.isNotEmpty).join(' ');

      if (fullName.isNotEmpty && userCredential.user?.displayName == null) {
        await userCredential.user?.updateDisplayName(fullName);
      }

      return userCredential;
    } on FirebaseAuthException catch (e) {
      print("Firebase Error: ${e.code}");
      print(e.message);
      return null;
    } catch (e) {
      print("Apple Sign-In Error: $e");
      return null;
    }
  }
}
