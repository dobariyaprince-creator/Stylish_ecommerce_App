import 'package:flutter/material.dart';
import 'package:stylish/model/product_size_model.dart';

class ProductSize extends StatefulWidget {
  final List<ProductSizeModel> sizes;
  final int selectedIndex;

  const ProductSize({
    super.key,
    required this.sizes,
    this.selectedIndex = 0,
  });

  @override
  State<ProductSize> createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,top: 10),
      child: Column(
        children: [

          const SizedBox(height: 15),
          SizedBox(
            height: 35,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.sizes.length,
              itemBuilder: (context, index) {
                final isSelected = selectedIndex == index;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 60,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? const Color(0xFFFA7189)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: const Color(0xFFFA7189),
                        width: 1.5,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        widget.sizes[index].text,
                        style: TextStyle(
                          fontFamily: "semibold",
                          fontSize: 14,
                          color: isSelected
                              ? Colors.white
                              : const Color(0xFFFA7189),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}