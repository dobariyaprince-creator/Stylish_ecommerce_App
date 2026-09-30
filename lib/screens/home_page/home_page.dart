import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:stylish/appcolors.dart';
import 'package:stylish/routs/routs.dart';
import 'package:stylish/widgets/custom_carousel.dart';
import '../../size_config.dart';
import '../../widgets/custom_searchbar.dart';
import '50%off_banner.dart';
import 'hot_sale_cart.dart';
import 'list_viewmini.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class Category {
  final String image;
  final String title;

  Category({required this.title, required this.image});
}

class _HomePageState extends State<HomePage> {
   logout() async {
    await FirebaseAuth.instance.signOut();
  }
  List<Category> category = [
    Category(title: "Beauty", image: "assets/images/beauty.png"),
    Category(title: "Fashion", image: "assets/images/fashion.png"),
    Category(title: "Kids", image: "assets/images/kids.png"),
    Category(title: "Men", image: "assets/images/mens.png"),
    Category(title: "Women", image: "assets/images/womens.png"),
    Category(title: "Shoes", image: "assets/images/gift.png"),
  ];
  TextEditingController searchbarController = TextEditingController();
  final ScrollController _productScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    /// Size Config initialization
    SizeConfig().init(context);
    return Scaffold(

      /// App Bar Section
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
                onPressed: (){
                 Scaffold.of(context).openDrawer();
            },icon:Icon(Icons.format_list_bulleted, size: 20, )),
          ),
        ),
        centerTitle: true,
        title: Image.asset("assets/images/stylishmini.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.Profile);
              },
              child: Image.asset("assets/images/profilepic1.png"),
            ),
          ),
        ],
      ),

       drawer: Drawer(
          width: 305,
          backgroundColor: AppColors.error,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.only(
              topRight: Radius.circular(70),
              bottomRight: Radius.circular(70),
            ),
          ),
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32,
                      child: Image.asset(
                        "assets/images/profilepic2.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: 18),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "John Smith\n",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "semibold",
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: "Loremipsum@gmail.com",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.white,
                              fontFamily: "semibold",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Color(0xFFE95322),
                  ),
                ),
                title: Text(
                  "My Order",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "semibold",
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.Checkout);
                },
              ),
              SizedBox(height: 8,),
              Divider(
                height: 1.5,
                endIndent: 18,
                indent: 18,
                color: Colors.white,
              ),
              SizedBox(height: 8,),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Color(0xFFE95322)),
                ),
                title: Text(
                  "My Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "semibold",
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context,AppRoutes.Profile);
                },
              ),
              SizedBox(height: 8,),
              Divider(
                height: 1.5,
                endIndent: 18,
                indent: 18,
                color: Colors.white,
              ),
             SizedBox(height: 8,),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Color(0xFFE95322),
                  ),
                ),
                title: Text(
                  "My Address",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "semibold",
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 8,),
              Divider(
                height: 1.5,
                endIndent: 18,
                indent: 18,
                color: Colors.white,
              ),
             SizedBox(height: 8,),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.credit_card, color: Color(0xFFE95322)),
                ),
                title: Text(
                  "Payment Methods",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "semibold",
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 8,),
              Divider(
                height: 1.5,
                endIndent: 18,
                indent: 18,
                color: Colors.white,
              ),
              SizedBox(height: 8,),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.phone, color: Color(0xFFE95322)),
                ),
                title: Text(
                  "Contact Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "semibold",
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 8,),
              Divider(
                height: 1.5,
                endIndent: 18,
                indent: 18,
                color: Colors.white,
              ),
              SizedBox(height: 8,),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.wechat_sharp, color: Color(0xFFE95322)),
                ),
                title: Text(
                  "Help & FAQs",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "semibold",
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height:8,),
              Divider(
                height: 1.5,
                endIndent: 18,
                indent: 18,
                color: Colors.white,
              ),
              SizedBox(height: 8,),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.settings, color: Color(0xFFE95322)),
                ),
                title: Text(
                  "Setting",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "semibold",
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 8,),
              Divider(
                height: 1.5,
                endIndent: 18,
                indent: 18,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.logout, color: Color(0xFFE95322)),
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "semibold",
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  logout();
                },
              ),
            ],
          ),
        ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              /// Search Bar Section
              custom_searchbar(searchbarController: searchbarController),

              /// All Featured Section
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 13, top: 20),
                child: Row(
                  children: [
                    Text(
                      'All Featured',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "semibold",
                        fontWeight: .w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 107),
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
                                color: Colors.grey.withValues(alpha: 0.18),
                                blurRadius: 10,
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

              /// Category Section
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 377.7,
                      height: 98,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: 0.16),
                            blurRadius: 9,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: SizedBox(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: category.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 7),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        category[index].image,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    category[index].title,
                                    style: TextStyle(
                                      fontFamily: "rehular",
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /// Carousel Section
              SizedBox(height: 20),
              CustomCarousel(),

              ///Deal of The Day Section
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 365,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.blueAccent.shade100,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deal of The Day',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "semibold",
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.alarm,
                                  color: Colors.white,
                                  size: 19,
                                ),
                                Text(
                                  ' 22h 55m 20s remaining ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 75, top: 16),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                print('INKWELL BUTTON TAPPED !!');
                              },
                              child: Container(
                                width: 100,
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
                                        'View All',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: "semibold",
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Suggested Products",
                      style: TextStyle(fontSize: 18, fontFamily: "semibold"),
                    ),
                  ],
                ),
              ),

              /// list view 1
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 5),
                child: SingleChildScrollView(
                  controller: _productScrollController,
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 250,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //   boxShadow:
                    //     [
                    //       BoxShadow(
                    //         color: AppColors.grey.withOpacity(0.20),
                    //         offset: Offset.fromDirection(0,10),
                    //         spreadRadius: 8
                    //       )
                    //     ]
                    // ),
                    child: Row(
                          children: [
                            Container(
                              width: 170,
                              height: 241,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey.withValues(alpha: 0.20),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/mask1.png",width: 170,),
                                    SizedBox(height: 6),
                                    Text(
                                      'Women Printed Kurta',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "semibold",
                                      ),
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      'Neque porro quisquam est qui dolorem ipsum quia',
                                      style: TextStyle(fontSize: 10.3),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 120,
                                        top: 5,
                                      ),
                                      child: Text(
                                        '₹1500',
                                        style: TextStyle(fontFamily: "semibold"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 60),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '₹2499   ',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '40%off',
                                              style: TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 45,
                                        top: 5,
                                      ),
                                      child: Image.asset(
                                        "assets/images/stars.png",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width: 12),
                            Container(
                              width: 170,
                              height: 241,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey.withValues(alpha: 0.20),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/mask2.png",),
                                    SizedBox(height: 6),
                                    Text(
                                      'HRX by Hrithik Roshan',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "semibold",
                                      ),
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      'Neque porro quisquam est qui dolorem ipsum quia',
                                      style: TextStyle(fontSize: 10.3),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 118,
                                        top: 5,
                                      ),
                                      child: Text(
                                        '₹2499',
                                        style: TextStyle(fontFamily: "semibold"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 60),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '₹4999   ',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '50%off',
                                              style: TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 45,
                                        top: 5,
                                      ),
                                      child: Image.asset(
                                        "assets/images/stars.png",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 170,
                              height: 241,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey.withValues(alpha: 0.20),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/mask3.png"),
                                    SizedBox(height: 6),
                                    Text(
                                      'Philips BHH880/10',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "semibold",
                                      ),
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      'Hair Straightening Brush With Keratin Infused Bristles (Black)',
                                      style: TextStyle(fontSize: 10.3),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 120,
                                        top: 5,
                                      ),
                                      child: Text(
                                        '₹999',
                                        style: TextStyle(fontFamily: "semibold"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 60),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '₹1999   ',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '50%off',
                                              style: TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 45,
                                        top: 5,
                                      ),
                                      child: Image.asset(
                                        "assets/images/stars.png",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 170,
                              height: 241,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey.withValues(alpha: 0.20),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/mask4.png"),
                                    SizedBox(height: 6),
                                    Text(
                                      'TITAN Men Watch- 1806N',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "semibold",
                                      ),
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      'This Titan watch in Black color is I wanted to buy for a long time',
                                      style: TextStyle(fontSize: 10.3),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 120,
                                        top: 5,
                                      ),
                                      child: Text(
                                        '₹1500',
                                        style: TextStyle(fontFamily: "semibold"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 60),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '₹3500   ',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '60%off',
                                              style: TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 45,
                                        top: 5,
                                      ),
                                      child: Image.asset(
                                        "assets/images/stars.png",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                  ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 100, left: 300),
                      //   child: FloatingActionButton(
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(35),
                      //     ),
                      //     backgroundColor: Colors.grey.shade400,
                      //     onPressed: () {
                      //       _productScrollController.animateTo(
                      //         _productScrollController.offset + 380,
                      //         duration: const Duration(milliseconds: 500),
                      //         curve: Curves.easeInOut,
                      //       );
                      //     },
                      //     child: Icon(
                      //       Icons.arrow_forward_ios_outlined,
                      //       size: 25,
                      //       color: Colors.black87,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // ),
                ),
              ),

              /// special offers section
              // ---------------- SPECIAL OFFER ----------------
              SizedBox(height: 15,),
               Container(
                 width: 360,
                  height: 84,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.borderGrey.withOpacity(0.20),
                        offset: Offset.fromDirection(5,5),
                        spreadRadius: 8,
                        blurRadius: 8
                      )
                    ]
                  ),
                  // margin: const EdgeInsets.symmetric(
                  //   horizontal: 12,
                  //   vertical: 5,
                  // ),
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Rectangle56.png",height:85,width: 85,),
                      const SizedBox(width: 12),

                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Special Offers 🎉",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "We make sure you get the\noffer you need at best Prices",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "medium",
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              /// flat and heels section
              SizedBox(height: 15),
              Stack(
                children: [
                  Container(
                    height: 175,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.borderGrey.withOpacity(0.20),
                          blurRadius: 5,
                          offset: Offset.fromDirection(0.40),
                          spreadRadius: 8,
                        )
                      ]
                    ),
                    child: Image.asset(
                      'assets/images/mac.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 11, top: 9),
                    child: Container(
                      width: 340,
                      height: 158,
                      color: Color(0xFFCCCCCC).withOpacity(0.34),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 144,
                            height: 108,
                            child: Image.asset("assets/images/heels.png"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 36,),
                              Text(
                                'Flat and Heels',
                                style: TextStyle(
                                  fontFamily: "semibold",
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Stand a Chance to get rewarded',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: "medium",
                                ),
                              ),
                              SizedBox(height: 12),
                              GestureDetector(
                                onTap: (){},
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: AppColors.error
                                  ),
                                  width: 92,
                                  height: 28,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 6,),
                                      Text(
                                        'Visit Now',
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 12,
                                          fontFamily: "medium",
                                        ),
                                      ),
                                      Icon(
                                      Symbols.arrow_right_alt_rounded,
                                        size: 25,
                                      //  fontWeight: FontWeight.w500,
                                        color: AppColors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              /// Trending Products section
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 365,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                   color: AppColors.pinkLight,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 14,right: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Trending Products',
                              style: TextStyle(
                                color: AppColors.white,
                                fontFamily: "semibold",
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: AppColors.white,
                                  size: 19,
                                ),
                                Text(
                                  ' Last Date 29/02/22',
                                  style: TextStyle(
                                    height: 2,
                                    fontFamily: "medium",
                                    color: AppColors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 64, top: 16),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('INKWELL BUTTON TAPPED !!');
                              },
                              child: Container(
                                width: 100,
                                height: 33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: BoxBorder.all(color: AppColors.white),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'View All  ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: "semibold",
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// list view 2
              ListViewMini(),

              /// Hot sell cart
              SizedBox(height: 20),
              HotSaleCart(),

              /// 50% Off Banner
              SponserBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
