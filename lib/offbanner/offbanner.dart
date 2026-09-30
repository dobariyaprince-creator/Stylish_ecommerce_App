import 'package:flutter/material.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CarouselView(itemExtent: 3, children: [
           SizedBox(
             height: 215,
             width: double.infinity,
             child: Row(
               children: [
                 Stack(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 15,left:20),
                       child: Image.asset('assets/images/tropages.png'),
                     ),
                     Expanded(
                       flex: 5,
                       child: Padding(
                         padding: const EdgeInsets.all(18),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [


                             const Text(
                               "50-40% OFF",
                               style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 20,
                                   fontFamily: "semibold"
                               ),
                             ),

                             const SizedBox(height: 10),

                             const Text(
                               "Now in Fashion",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 12,
                               ),
                             ),

                             const SizedBox(height: 4),

                             const Text(
                               "All Colours",
                               style: TextStyle(
                                 color: Colors.white70,
                                 fontSize: 12,
                               ),
                             ),

                             const SizedBox(height: 18),

                             OutlinedButton(
                               style: OutlinedButton.styleFrom(
                                 side: const BorderSide(color: Colors.white),
                                 foregroundColor: Colors.white,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(8),
                                 ),
                               ),
                               onPressed: () {},
                               child: const Text("Shop Now →"),
                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ],
             ),
           ),
         ]),

        const SizedBox(height: 12),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildDot(true),
            buildDot(false),
            buildDot(false),

          ],
        )
      ],
    );
  }

  Widget buildDot(bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.5),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: active ? Colors.pink : Colors.grey.shade400,
        shape: BoxShape.circle,
      ),
    );
  }
}