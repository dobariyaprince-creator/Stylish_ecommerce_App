import 'package:flutter/material.dart';
import 'package:stylish/model/list_view.dart';

class main_listview extends StatelessWidget {
 // final ScrollController _productScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: plistviews.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 5.0,bottom: 15,left: 7),
          child: Container(
            width: 170,
            height: 241,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.16),
                  blurRadius: 10,
                  offset: const Offset(0,4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Image.asset(plistviews[index].image),
                const  SizedBox(height: 6),
                  Text(
                    textAlign: TextAlign.start,
                    plistviews[index].title,
                    style: TextStyle(fontSize: 12, fontFamily: "semibold"),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    plistviews[index].desc,
                    style: TextStyle(fontSize: 10.3),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 115, top: 5),
                    child: Text(
                      plistviews[index].price,
                      style: TextStyle(fontFamily: "semibold"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 45, top: 5),
                    child: Image.asset("assets/images/stars.png"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

//
// class main_listview extends StatefulWidget {
//   const main_listview({super.key});
//
//   @override
//   State<main_listview> createState() => _main_listviewState();
// }
//
// class _main_listviewState extends State<main_listview> {
//   final ScrollController _productScrollController = ScrollController();
//
//   @override
//   void dispose() {
//     _productScrollController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       controller: _productScrollController,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: 10,
//         childAspectRatio: 0.70,
//         mainAxisSpacing: 10,
//       ),
//       padding: EdgeInsets.all(10),
//       itemCount: listview.length,
//       itemBuilder: (context, index) {
//         final product =listviews[index];
//         return Container(
//           width: 170,
//           height: 241,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(7),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withValues(alpha: 0.20),
//                 blurRadius: 8,
//                 offset: const Offset(0, 4),
//               ),
//             ],
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(2.0),
//             child: Column(
//               children: [
//                 Image.asset(listview[index].image),
//                 SizedBox(height: 6),
//                 Text(
//                   listview[index].title,
//                   style: TextStyle(fontSize: 12, fontFamily: "semibold"),
//                 ),
//                 Text(
//                   textAlign: TextAlign.center,
//                   listview[index].desc,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(fontSize: 10.3),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     listview[index].price,
//                     style: TextStyle(fontFamily: "semibold"),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 60),
//                   child: RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: listview[index].priceoff,
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                         TextSpan(
//                           text: '40%off',
//                           style: TextStyle(color: Colors.red),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 45, top: 5),
//                   child: Image.asset("assets/images/stars.png"),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
