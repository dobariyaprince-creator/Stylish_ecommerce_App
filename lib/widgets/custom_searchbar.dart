import 'package:flutter/material.dart';
import 'package:stylish/appcolors.dart';

class custom_searchbar extends StatelessWidget {
  const custom_searchbar({
    super.key,
    required this.searchbarController,
  });

  final TextEditingController searchbarController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: 50,
        width: 365,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: BoxBorder.all(
            color: AppColors.fill,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color:AppColors.shadow.withValues(alpha: 0.18),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: TextFormField(
          controller: searchbarController,
          decoration: InputDecoration(
            // hintText: 'Search any Product..',
            hint: Text(
              'Search any Product..',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'regular',
                color: AppColors.textQuaternary,
              ),
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color:AppColors.textQuaternary,
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.mic_none_outlined),
              color: AppColors.textQuaternary,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color:AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
