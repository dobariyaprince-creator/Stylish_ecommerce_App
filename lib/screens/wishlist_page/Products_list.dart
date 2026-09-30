import 'package:flutter/material.dart';

import '../../model/products_model.dart';

class ProductCard extends StatelessWidget {
  final ProductsModel product;
  final int index;

  const ProductCard({super.key, required this.product, required this.index});

  @override
  Widget build(BuildContext context) {
    // final double Height = index.isEven ? 245 : 305;
    return Column(
      children: [
        Container(
          width: 170,
          height: 245,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.10),
                blurRadius: 2,
                spreadRadius: 0.5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          // clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IMAGE
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: AspectRatio(
                  aspectRatio: 1.35,
                  child: Image.asset(
                    product.images,
                    fit: BoxFit.cover,
                    /// This is for the error of note found in the image
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(Icons.image_not_supported),
                      );
                    },
                  ),
                ),
              ),

              // CONTENT
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 5, 8, 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TITLE
                    Text(
                      product.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 4),

                    // DESCRIPTION
                    Text(
                      product.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 11.5,
                        color: Colors.grey,
                        height: 1.3,
                      ),
                    ),

                    const SizedBox(height: 5),

                    // PRICE
                    Text(
                      product.price,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 3),

                    // RATING
                    Row(
                      children: [
                        ...List.generate(5, (index) {
                          return const Icon(
                            Icons.star,
                            size: 14,
                            color: Color(0xffffc107),
                          );
                        }),

                        const SizedBox(width: 4),

                        // Text(
                        //   product.review,
                        //   style: const TextStyle(
                        //     fontSize: 9,
                        //     color: Colors.grey,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
