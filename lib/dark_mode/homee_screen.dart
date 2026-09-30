import 'package:flutter/material.dart';
class HomeeScreen extends StatelessWidget {

  final bool isDark;
  final ValueChanged<bool> onChanged;

  const HomeeScreen({
    super.key,
    required this.isDark,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dark Mode"),
      ),

      body: Center(
        child: SwitchListTile(
          title: const Text("Dark Mode"),
          secondary: Icon(
            isDark ? Icons.dark_mode : Icons.light_mode,
          ),
          value: isDark,
          onChanged: onChanged,
        ),
      ),
    );
  }
}