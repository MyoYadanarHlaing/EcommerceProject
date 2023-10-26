import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize{
  final Widget leading;
  final Widget? title;
  final List<Widget>? actions;

  const AppBarWidget({
    super.key,
    required this.leading,
    this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leadingWidth: 40,
      leading: leading,
      title: title,
      actions: actions,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}