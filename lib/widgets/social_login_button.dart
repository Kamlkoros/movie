import 'package:flutter/material.dart';

Widget socialLoginButton(String imagePath) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      border: Border.all(color: Colors.grey.withOpacity(0.5)),
    ),
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
    child: Image.asset(imagePath, width: 18, height: 18),
  );
}
