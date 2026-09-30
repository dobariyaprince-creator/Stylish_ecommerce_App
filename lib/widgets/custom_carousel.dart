import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key});

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  List<String> images = [
    'assets/images/tropages.png',
    'assets/images/tropages.png',
    'assets/images/tropages.png',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images
          .map(
            (item) => Container(
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(item),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '50-40% OFF',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "extrabold",
                      ),
                    ),
                    Text(
                      'Now in (Product)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: .w600,
                        height: 2,
                      ),
                    ),
                    Text(
                      'All colours',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: .w600,
                      ),
                    ),
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () {
                        print('INKWELL BUTTON TAPPED !!');
                      },
                      child: InkWell(onTap: (){},
                        child: Container(
                          width: 106,
                          height: 33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: BoxBorder.all(color: Colors.white),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Shop Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: "semibold",
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
        height: 190.0,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(milliseconds: 200),
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
        aspectRatio: 15 / 9,
        viewportFraction: 0.8,
      ),
    );
  }
}
