import 'package:book/Screens/detail_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class TwoSidedRoundedButton extends StatelessWidget {
  final String text;
  final double radius;
  final Function() press;

  const TwoSidedRoundedButton(
      {Key? key, required this.text, required this.radius, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 35,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
      ),
    );
  }
}
