import 'package:flutter/material.dart';
import 'package:stylish/screens/checkout/checkout_page.dart';
import 'package:stylish/screens/shop_page/cart_page.dart';
import 'package:stylish/screens/wishlist_page/wishlist_page.dart';
import '../bottomnav/bottomnav_bar.dart';
import '../screens/forgotpass_page/forgotpass_page.dart';
import '../screens/getstarted_page/getstarted_page.dart';
import '../screens/home_page/home_page.dart';
import '../screens/intro_screen/intro_screen.dart';
import '../screens/place_order/palce_oder_page.dart';
import '../screens/place_order/productinfocard.dart';
import '../screens/profile_page/profile_page.dart';
import '../screens/checkout/shopping_list_page.dart';
import '../screens/signin_page/signin_page.dart';
import '../screens/signup_page/signup_page.dart';
import '../screens/splash_screen/splash_screen.dart';
import '../wrapper/wrapper.dart';

class AppRoutes{
  static const String splash = "/SplashScreen";
  static const String intro = "/IntroScreen";
  static const String signIn = "/SignInPage";
  static const String signup = "/SignupPage";
  static const String bottomNavBar = "/BottomnavBar";
  static const String home = "/HomePage";
  static const String Getstarted = "/GetStartedPage";
  static const String Profile ="/ProfilePage";
  static const String Wishlist = "/WishlistPage";
  static const String Cart= "/CartPage";
  static const String Forgotpass = "/ForgotpassPage";
  static const String Checkout = "/CheckoutPage";
  static const String ProductInfo ="/ProductInfoCard";
  static const String Shoppinglist ="/ShoppingListPage";
  static const String placeorder= "/PlaceOderPage";
  static const String wrapper = "/Wrapper";


  static Map<String,WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    intro: (context) => const IntroScreen(),
    signIn: (context) => const SigninPage(),
    signup: (context) => const SignupPage(),
    bottomNavBar: (context) => const BottomnavBar(),
    home: (context) => const HomePage(),
    Getstarted: (context) => const GetstartedPage(),
    Wishlist: (context) => const WishlistPage(),
    Cart: (context) => const CartPage(),
    Profile: (context) => const ProfilePage(),
    Forgotpass: (context) => const ForgotpassPage(),
    Checkout: (context) => const CheckoutPage(),
    ProductInfo: (context) => ProductInfoCard(),
    Shoppinglist: (context) => const ShoppingListPage(),
    placeorder : (context) =>  PlaceOderPage(),
    wrapper : (context) =>  Wrapper(),
  };


}