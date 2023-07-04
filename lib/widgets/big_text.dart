import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  Color color;
  double size;
  FontWeight fontWeight;
  TextOverflow overflow;

  BigText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF332d2d),
    this.size = 22,
    this.overflow = TextOverflow.ellipsis,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
