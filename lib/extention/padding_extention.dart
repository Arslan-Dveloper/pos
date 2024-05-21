import 'package:flutter/material.dart';

extension AllPadding on Widget {
  Widget onlyPadding({
    double right = 0,
    double left = 0,
    double top = 0,
    double bottom = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        right: right,
        left: left,
        top: top,
        bottom: bottom,
      ),
      child: this,
    );
  }
}
