import 'package:flutter/material.dart';

import '../utils/constants.dart';

// const textStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    this.icon,
    this.label,
  });
  final IconData? icon;
  final dynamic label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kTextStyle,
        )
      ],
    );
  }
}
