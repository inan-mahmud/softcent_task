import 'package:flutter/material.dart';

extension ShapeBorderX on ShapeBorder {
  static ShapeBorder roundedRectangle(double radius) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(radius),
      ),
    );
  }
}
