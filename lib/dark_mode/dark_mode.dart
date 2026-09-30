import 'package:flutter/material.dart';

import 'homee_screen.dart';

void main() {
  runApp(const DarkMode());
}

class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.deepPurple,
      ),

      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

      home: HomeeScreen(
        isDark: isDark,
        onChanged: (value) {
          setState(() {
            isDark = value;
          });
        },
      ),
    );
  }
}