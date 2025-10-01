import 'package:flutter/material.dart';

class DrawerHeaderCustom extends StatelessWidget {
  const DrawerHeaderCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Colors.grey),
      child: Icon(
        Icons.person,
        color: Colors.white,
        size: 60,
      ),
    );
  }
}
