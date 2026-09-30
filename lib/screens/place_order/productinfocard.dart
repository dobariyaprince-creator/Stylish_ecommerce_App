import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:stylish/appcolors.dart';

class ProductInfoCard extends StatefulWidget {

  @override
  State<ProductInfoCard> createState() => _ProductInfoCardState();
}

class _ProductInfoCardState extends State<ProductInfoCard> {

  Razorpay razorpay = Razorpay();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product image
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            'assets/images/women_dress.png',
            // replace with your asset/network image
            width: 110,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),

        // Product details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Women's Casual Wear",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Checked Single-Breasted Blazer',
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.black,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 14),

              // Size + Qty selector chips
              Row(
                children: const [
                  _SelectorChip(label: 'Size', value: '42'),
                  SizedBox(width: 10),
                  _SelectorChip(label: 'Qty', value: '1'),
                ],
              ),
              const SizedBox(height: 14),

              // Delivery line
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                  children: const [
                    TextSpan(text: 'Delivery by  '),
                    TextSpan(
                      text: '10 May 2XXX',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
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



class _SelectorChip extends StatelessWidget {
  final String label;
  final String value;

  const _SelectorChip({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        //border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$label ',
            style: TextStyle(fontSize: 13, color: AppColors.black,),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 5),
          Icon(Icons.keyboard_arrow_down, size: 20, color: Colors.grey[600]),
        ],
      ),
    );
  }
}