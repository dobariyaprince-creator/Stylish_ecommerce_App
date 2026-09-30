import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stylish/model/products_model.dart';
import 'package:stylish/size_config.dart';
import 'package:stylish/widgets/custom_searchbar.dart';

import 'Products_list.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late final ProductsModel product;

  TextEditingController searchbarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // List<ProductsModel> Products = [];
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          custom_searchbar(searchbarController: searchbarController),
          // /// Search Bar Section
          // Padding(
          //   padding: const EdgeInsets.only(top: 15),
          //   child: Container(
          //     height: 50,
          //     width: 365,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(12),
          //       border: BoxBorder.all(color: Colors.grey.shade100, width: 1),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withValues(alpha: 0.18),
          //           blurRadius: 8,
          //           offset: const Offset(5, 3),
          //         ),
          //       ],
          //     ),
          //     child: TextField(
          //       controller: searchbarController,
          //       decoration: InputDecoration(
          //         // hintText: 'Search any Product..',
          //         hint: Text(
          //           'Search any Product..',
          //           style: TextStyle(
          //             fontSize: 14,
          //             fontFamily: 'regular',
          //             color: Colors.grey.shade500,
          //           ),
          //         ),
          //         suffixIcon: IconButton(
          //           onPressed: () {},
          //           icon: Icon(Icons.mic_none_outlined),
          //           color: Colors.grey.shade500,
          //         ),
          //         prefixIcon: IconButton(
          //           onPressed: () {},
          //           icon: Icon(Icons.search),
          //           color: Colors.grey.shade500,
          //         ),
          //         enabledBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(12),
          //           borderSide: BorderSide(color: Colors.white),
          //         ),
          //         focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(12),
          //           borderSide: BorderSide(color: Colors.white),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          /// All filter Section
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 5, top: 20),
            child: Row(
              children: [
                Text(
                  '52,028+ items',
                  style: TextStyle(fontSize: 18, fontFamily: "semibold"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 92.5),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 65,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: 0.16),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Text(' Sort '),
                          Icon(Icons.swap_calls_sharp),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 67,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: 0.16),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Text(' Filter '),
                          Icon(Icons.filter_alt_outlined),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// list view 1
          SizedBox(height: getProportionateScreenHeight(15),),
          Expanded(
            child: MasonryGridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 20),
              mainAxisSpacing: 16,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index],
                  index: index,);
              },
            ),
          ),
        ],
      ),
    );
  }
}
