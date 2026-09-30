import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../../appcolors.dart';
import 'body.dart';


class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.01,
        shadowColor: AppColors.shadow,
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(fontSize: 18, fontFamily: "semibold"),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Symbols.arrow_back_2_rounded, color: AppColors.black),
        ),
      ),
      body: CheckOutBody(),
    );
  }
}
