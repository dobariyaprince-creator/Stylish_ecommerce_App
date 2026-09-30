import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      // Email TextField
      Padding(
        padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
        child: TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade200,
            filled: true,
            prefixIcon: Icon(Icons.person, color: Colors.grey.shade600),
            hintText: 'Username or Email',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade500),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      );
    // // Password TextField
    // Padding(
    // padding: const EdgeInsets.only(top: 25, left: 32, right: 32),
    // child: TextField(
    // controller: passwordController,
    // keyboardType: TextInputType.visiblePassword,
    // decoration: InputDecoration(
    // fillColor: Colors.grey.shade200,
    // filled: true,
    // suffixIcon: Icon(
    // Icons.remove_red_eye_outlined,
    // color: Colors.grey.shade600,
    // ),
    // prefixIcon: Icon(Icons.lock, color: Colors.grey.shade600),
    // hintText: 'Password',
    // enabledBorder: OutlineInputBorder(
    // borderSide: BorderSide(color: Colors.grey.shade500),
    // borderRadius: BorderRadius.circular(12),
    // ),
    // focusedBorder: OutlineInputBorder(
    // borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
    // borderRadius: BorderRadius.circular(8),
    // ),
    // ),
    // ),
    // );
  }
}
