import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon:  Icon(icon, color: Colors.white),
      style: ButtonStyle(
        // ignore: deprecated_member_use
        backgroundColor: WidgetStatePropertyAll(Colors.white.withOpacity(0.05)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        ),
      ),
    );
  }
}
