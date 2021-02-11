import 'package:flutter/material.dart';
class Holder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
        color: const Color(0xff2b246b),
        border: Border.all(width: 1.0, color: const Color(0xff12fdbe)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
    );
  }
}
