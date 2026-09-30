import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stylish/routs/routs.dart';
import '../../appcolors.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  logout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Setting Page", style: TextStyle(fontSize: 25))),
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
