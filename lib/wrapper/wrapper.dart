import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../bottomnav/bottomnav_bar.dart';
import '../screens/signin_page/signin_page.dart';

//import '../widgets/unique_progress_bar.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return BottomnavBar();
          } else {
            return SigninPage();
          }
        },
      ),
    );
  }
}
