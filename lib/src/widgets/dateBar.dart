import 'package:flutter/material.dart';
import 'dart:ui';

class DateBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          width: window.physicalSize.width * 0.92,
          height: 38,
          color: Color(0xB4FFFFFF),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2022年11月8日',
                  style: TextStyle(fontSize: 15.0, color: Color(0xFF0E6650)),
                ),
                Text(
                  '星期二',
                  style: TextStyle(fontSize: 15.0, color: Color(0xFF0E6650)),
                ),
              ]),
        ));
  }
}
