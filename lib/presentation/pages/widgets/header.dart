// lib/presentation/widgets/header.dart

import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  Header({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.blue,
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Handle notifications action
          },
        ),
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            // Handle profile action
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
