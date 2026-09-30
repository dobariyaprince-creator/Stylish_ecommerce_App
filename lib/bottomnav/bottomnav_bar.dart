import 'package:flutter/material.dart';
import 'package:stylish/screens/shop_page/cart_page.dart';
import 'package:stylish/pages/search_page.dart';
import 'package:stylish/screens/setting_page/setting.dart';
import 'package:stylish/screens/wishlist_page/wishlist_page.dart';

import '../screens/home_page/home_page.dart';

class BottomnavBar extends StatefulWidget {

  const BottomnavBar({super.key});
  @override
  State<BottomnavBar> createState() => _BottomnavBarState();
}
class _BottomnavBarState extends State<BottomnavBar> {

  int selectedIndex = 0;
  int currentIndex = 0;

  final List<Widget> pages = [
   // const Center(child: Text("Home",style: TextStyle(fontFamily: "regular"),)),
    const HomePage(),
   // const Center(child: Text("Wishlist",style: TextStyle(fontFamily: "regular"),)),
    const WishlistPage(),
   // const Center(child: Text("Cart",style: TextStyle(fontFamily: "regular"),)),
    const CartPage(),
   // const Center(child: Text("Search",style: TextStyle(fontFamily: "regular"),)),
    const SearchPage(),
   // const Center(child: Text("Setting",style: TextStyle(fontFamily: "regular"),)),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

  //     body: const Center(
  //       child: Text(
  //         "Home Screen",
  //         style: TextStyle(fontSize: 25),
  //       ),
  //     ),
  //
  //     // Center Floating Cart Button
  //     floatingActionButton: FloatingActionButton(
  //       backgroundColor: Colors.white,
  //       elevation: 8,
  //       shape: const CircleBorder(),
  //       onPressed: () {},
  //       child: const Icon(
  //         Icons.shopping_cart_outlined,
  //         color: Colors.black,
  //         size: 30,
  //       ),
  //     ),
  //
  //     floatingActionButtonLocation:
  //     FloatingActionButtonLocation.centerDocked,
  //
  //     bottomNavigationBar: BottomAppBar(
  //       color: Colors.white,
  //       elevation: 15,
  //       shape: const CircularNotchedRectangle(),
  //
  //       child: SizedBox(
  //         height: 70,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: [
  //
  //             navItem(Icons.home_outlined,"Home",0),
  //
  //             navItem(Icons.favorite_border, "Wishlist", 1),
  //
  //             const SizedBox(width: 40),
  //
  //             navItem(Icons.search, "Search", 2),
  //
  //             navItem(Icons.settings_outlined, "Setting", 3),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget navItem(IconData icon, String title, int index) {
  //
  //   bool selected = currentIndex == index ;
  //
  //   return InkWell(
  //     onTap: () {
  //       setState(() {
  //         currentIndex = index;
  //       });
  //     },
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //
  //         Icon(
  //           icon,
  //           color: selected ? Colors.red : Colors.black,
  //         ),
  //
  //         const SizedBox(height: 3),
  //
  //         Text(
  //           title,
  //           style: TextStyle(
  //             color: selected ? Colors.red : Colors.black,
  //             fontSize: 12,
  //           ),
  //         ),
  //       ],
  //     ),

      body: pages[selectedIndex],
      //
      // floatingActionButtonLocation:
      // FloatingActionButtonLocation.centerFloat,

      bottomNavigationBar: BottomNavigationBar(
         selectedItemColor: Color(0xFFEB3030),
         unselectedItemColor: Color(0xFF000000),
         currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFF1F1F9),

        items: const [

          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),

          BottomNavigationBarItem(
            activeIcon:Icon(Icons.favorite),
            icon: Icon(Icons.favorite_border_outlined),
            label: "Wishlist",
          ),

          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            activeIcon: Icon(Icons.shopping_cart),
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),

          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search),
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),

          BottomNavigationBarItem(
            activeIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}

