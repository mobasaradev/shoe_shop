import 'package:flutter/material.dart';

scaffoldMsg(BuildContext context, String content, Color? backgroundColor) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      backgroundColor: backgroundColor,
    ),
  );
}
