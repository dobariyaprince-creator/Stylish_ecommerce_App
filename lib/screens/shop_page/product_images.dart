import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  final PageController _pageController = PageController();

  List<String> Shopbanners = [
    "assets/images/unsplash.png",
    "assets/images/unsplash1.png",
    "assets/images/unsplash2.png",
  ];
   int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:4,top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 225,
            width: double.infinity,
            child:PageView.builder( onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
              controller: _pageController,
              itemCount: Shopbanners.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width:365,
                    height: 220,
                    child:Image.asset(Shopbanners[index],fit: BoxFit.cover,),
                  ),
                );
              },
            ),
          ),
        SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:List.generate(Shopbanners.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 8,
                width: selectedIndex == index ? 20:6,
                decoration: BoxDecoration(
                  color: selectedIndex == index ? Colors.redAccent.shade700:Colors.grey,
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              );
            }
            ),
          )
        ],
      ),
    );
  }
}