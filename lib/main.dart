import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:stylish/routs/routs.dart';
import 'package:flutter/material.dart';
import 'package:stylish/appcolors.dart';
import 'email_validator.dart';

void main()async {
  // FireBase Initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "Montserrat",
        scaffoldBackgroundColor: AppColors.background,
      ),
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
      //home: EmailValidator(),
    );
  }
}
