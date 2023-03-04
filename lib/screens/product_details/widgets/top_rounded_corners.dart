import 'package:flutter/material.dart';

class TopRoundedCorners extends StatelessWidget {
  final Widget child;
  final Color? color;
  const TopRoundedCorners(
      {super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        color: color,
      ),
      child: child,
    );
  }
}
