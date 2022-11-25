import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ButtomButton extends StatelessWidget {
  final Function() onTap;
  final String textOfButton;
  const ButtomButton({
    Key? key,
    required this.onTap,
    required this.textOfButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // ignore: sort_child_properties_last
        child: Center(
          child: Text(
            textOfButton,
            style:
                sTextStyle.copyWith(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        color: kButtomcontainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kButtomContainerHeight,
        // padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
