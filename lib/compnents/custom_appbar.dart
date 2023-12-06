import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppbar extends StatelessWidget implements PreferredSize {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  const CustomAppbar({
    super.key, required this.title, required this.press,
  });
  final String title;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,style: const TextStyle(color: KTextColor),),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        color: Colors.black,
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: press,
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}