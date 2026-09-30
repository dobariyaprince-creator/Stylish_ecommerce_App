import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:stylish/screens/place_order/palcebody.dart';

import '../../appcolors.dart';

class PlaceOderPage extends StatefulWidget {
  @override
  State<PlaceOderPage> createState() => _PlaceOderPageState();
}

class _PlaceOderPageState extends State<PlaceOderPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.shadow,
        centerTitle: true,
        title: Text(
          "Shopping Bag",
          style: TextStyle(fontSize: 18, fontFamily: "semibold"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSelected =!isSelected;
              });
            },
            icon: Icon(
              isSelected
                  ? Icons.favorite_border_sharp
                  : Icons.favorite,
              color:
              isSelected
                  ? AppColors.black
                  : AppColors.error,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Symbols.arrow_back_2_rounded, color: AppColors.black),
        ),
      ),
      body: PlaceBody(),
    );
  }
}
