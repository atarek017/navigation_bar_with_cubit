import 'dart:core';

import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  double width;
  Color background;
  bool isUpperCase;
  double radius;

  final VoidCallback function;
  final String text;

  DefaultButton({
    required Key key,
    this.width = double.infinity,
    this.background = Colors.blue,
    this.isUpperCase = true,
    this.radius = 3.0,
    required this.text,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );
  }
}
