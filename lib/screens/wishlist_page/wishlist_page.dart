import 'package:flutter/material.dart';
import 'body.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: Icon(Icons.format_list_bulleted, size: 20),
            ),
          ),
          centerTitle: true,
          title: Image.asset("assets/images/stylishmini.png"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset("assets/images/profilepic1.png"),
            ),
          ],
        ),
        body: Body(),
    );
  }
}

