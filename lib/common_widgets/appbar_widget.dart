import 'package:flutter/material.dart';

class BubbaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BubbaAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      title: FittedBox(
        child: RichText(
          text: const TextSpan(
            text: 'Bubba',
            style: TextStyle(
              fontSize: 33,
            ),
          ),
        ),
      ),
      toolbarHeight: 100,
      centerTitle: true,
    );
  }
}
