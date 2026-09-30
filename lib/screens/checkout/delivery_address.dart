import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../../appcolors.dart';

class Delivery_Address_Sec extends StatelessWidget {
  const Delivery_Address_Sec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 150,
            height: 22,
            child: Row(
              children: [
                Icon(Symbols.location_on),
                Text(
                  "Delivery Address",
                  style: TextStyle(fontSize: 14, fontFamily: "semibold"),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey.withValues(alpha: 0.18),
                      blurRadius: 8,
                      offset: Offset.fromDirection(40),
                    ),
                  ],
                ),
                width: 241,
                height: 79,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Address :",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "semibold",
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 145),
                          child: GestureDetector(
                            onTap: (){},
                            child: Icon(
                              Symbols.edit_square,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Text(
                      maxLines: 2,
                      "216 St Paul's Rd, London N1 2LL, UK Contact : +44-784332",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "regular",
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 25),
              Container(
                width: 79,
                height: 79,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey.withOpacity(0.25),
                      offset: Offset.fromDirection(50),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Icon(Symbols.add_circle_outline_sharp,
                  fontWeight: FontWeight.w500,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}