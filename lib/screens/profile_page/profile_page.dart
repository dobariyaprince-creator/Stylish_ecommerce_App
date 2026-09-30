import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:stylish/appcolors.dart';
import 'package:stylish/size_config.dart';

import '../profile_page/body.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    /// Size Config initialization
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor:AppColors.white,
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(fontSize: 18, fontFamily: "semibold"),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Symbols.arrow_back_2_rounded, color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}