import 'package:flutter/material.dart';

class CustomScreenPadding extends StatelessWidget {
  const CustomScreenPadding({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: child,
    );
  }
}
