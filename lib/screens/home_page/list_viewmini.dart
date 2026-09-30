import 'package:flutter/material.dart';
import 'package:stylish/appcolors.dart';
import 'package:stylish/model/model2_page.dart';

class ListViewMini extends StatefulWidget {

  const ListViewMini({super.key,});


  @override
  State<ListViewMini> createState() => _ListViewMiniState();
}

class _ListViewMiniState extends State<ListViewMini> {
 // late final Model2Page model2page;
 // final ScrollController _productScrollbarController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(top: 20, left: 15),
        child: SizedBox(
          width: double.infinity,
          height: 210,
          child: ListView.builder(
            itemCount: model2page.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
             return  Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 8,left: 2),
                   child: Container(
                     width: 145,
                     height: 195,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                       color:AppColors.white,
                       boxShadow: [
                         BoxShadow(
                           color: AppColors.borderGrey.withValues(alpha: 0.20),
                           blurRadius: 8,
                           offset: const Offset(0, 5),
                         ),
                       ],
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Image.asset(model2page[index].images,width: 145,),
                         SizedBox(height: 4),
                         Padding(
                           padding: const EdgeInsets.only(left: 6),
                           child: Text(
                             textAlign: TextAlign.start,
                             model2page[index].title,
                             style: TextStyle(
                               fontFamily: "medium",
                               fontSize: 12,
                               height: 1.2,
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 2),
                           child: Text(
                             model2page[index].price,
                             style: TextStyle(
                                 fontSize: 14,
                                 fontFamily: "semibold"),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 6),
                           child: RichText(
                             text: TextSpan(
                               children: [
                                 TextSpan(
                                   text: model2page[index].offprice,
                                   style: TextStyle(
                                     decoration:
                                     TextDecoration.lineThrough,
                                     color: AppColors.grey,
                                     fontSize: 14,
                                     fontFamily: "medium"
                                   ),
                                 ),
                                 TextSpan(
                                   text:"  ${ model2page[index].offpersent}",
                                   style: TextStyle(
                                     fontSize: 12,
                                       fontFamily: "medium",
                                       color:AppColors.error
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             );
            } ,
          ),
        ),
    );
  }
}
