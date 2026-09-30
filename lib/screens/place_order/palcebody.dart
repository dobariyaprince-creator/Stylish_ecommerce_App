import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:stylish/appcolors.dart';
import 'package:stylish/screens/place_order/productinfocard.dart';
import 'package:stylish/widgets/custom_button.dart';

class PlaceBody extends StatefulWidget {
  @override
  State<PlaceBody> createState() => _PlaceBodyState();
}

class _PlaceBodyState extends State<PlaceBody> {
  Razorpay razorpay = Razorpay();

  @override
  Widget build(BuildContext context) {
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: ProductInfoCard(),
            ),
            SizedBox(height: 35),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 15),
                Icon(Icons.local_movies_outlined),
                SizedBox(width: 5),
                Expanded(
                  flex: 4,
                  child: Text(
                    "Apply Coupons",
                    style: TextStyle(fontFamily: "semibold", fontSize: 16),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Select",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.error,
                        fontFamily: "semibold",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                width: 360,
                height: 1.5,
                color: AppColors.lightGrey,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Order Payment Details",
                style: TextStyle(fontFamily: "semibold", fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "\nOrder Amounts ",
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            fontFamily: "regular",
                            fontWeight: .w600,
                          ),

                          children: [
                            TextSpan(
                              text: "\nConvenience",
                              style: TextStyle(height: 2, fontSize: 16),
                            ),
                            TextSpan(
                              text: "     Know More.",
                              style: TextStyle(
                                fontFamily: "semibold",
                                color: AppColors.error,
                                fontSize: 13,
                              ),
                            ),
                            TextSpan(
                              text: "\nDelivery Fee ",
                              style: TextStyle(
                                height: 2,
                                fontFamily: "regular",
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "\n₹ 7,000.00 ",
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            fontFamily: "semibold",
                            fontWeight: .w700,
                          ),
                          children: [
                            TextSpan(
                              text: "\nApply Coupon",
                              style: TextStyle(
                                fontFamily: "semibold",
                                color: AppColors.error,
                                height: 2,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: "\nFree ",
                              style: TextStyle(
                                height: 2,
                                fontFamily: "semibold",
                                color: AppColors.error,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Container(
                width: 360,
                height: 1.5,
                color: AppColors.lightGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order Total",
                    style: TextStyle(fontSize: 17, fontFamily: "semibold"),
                  ),

                  Text(
                    "₹ 7,000.00",
                    style: TextStyle(
                      fontSize: 16,
                      height: 2,
                      fontWeight: .w600,
                      fontFamily: "semibold",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Text.rich(
                TextSpan(
                  text: "EMI Available ",
                  style: TextStyle(
                    fontFamily: "regular",
                    fontWeight: .w500,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: "      Details",
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.error,
                        fontFamily: "semibold",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 41),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                border: BoxBorder.all(color: AppColors.grey, width: 1),
                color: const Color(0xFFF1F1F1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "₹ 7,000.00\n",
                        style: TextStyle(
                          fontSize: 16,
                          height: 2,
                          fontWeight: .w600,
                          fontFamily: "semibold",
                        ),
                        children: [
                          TextSpan(
                            text: "View Details",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.error,
                              fontWeight: .w600,
                              fontFamily: "semibold",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 47),
                      child: CustomButton(
                        text: "Proceed to Payment",
                        onPressed: () {
                          var option = {
                            'key': 'rzp_test_1DP5mmOlF5G5ag',
                            'amount': 700000.00,
                            'name': 'Acme Corp.',
                            'description': 'Fine T-Shirt',
                            'prefill': {
                              'contact': '9327198488',
                              'email': 'thomas.todd@example.com',
                            },
                          };
                          try{
                            razorpay.open(option);
                          }catch(e){
                            debugPrint(e.toString());
                          }
                        },
                        width: 225,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(msg: 'PAYMENT SUCCESSFUL');
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(msg: 'PAYMENT FAILED');
  }

  @override
  void dispose() {
    razorpay.clear();
    AlertDialog(

      backgroundColor: AppColors.white,
      title: Text("Payment Done Successfully.",
        style: TextStyle(
            fontFamily: "medium",
          fontSize: 16,
          color: AppColors.black,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(8),
      ),
    );
    super.dispose();
  }
}
