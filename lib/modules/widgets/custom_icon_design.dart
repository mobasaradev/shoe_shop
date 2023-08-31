import 'package:flutter/material.dart';

buildImageButton(Color backgroundColor, String imageUrl) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 45,
        height: 45,
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Image.asset(imageUrl),
        ),
      ),
    );
  }