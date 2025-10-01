import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  const ListTileCustom({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      leading: Icon(icon, color: Colors.white),
      trailing: Icon(CupertinoIcons.arrow_right, color: Colors.white),
    );
  }
}
