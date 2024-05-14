import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBackPressed;
  final String title;

  const CustomAppBar({
    Key? key,
    required this.onBackPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, size: 40),
            onPressed: onBackPressed,
          ),
          const Icon(
            Icons.supervised_user_circle_rounded,
            size: 40,
            color: Color.fromARGB(255, 13, 161, 102),
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}