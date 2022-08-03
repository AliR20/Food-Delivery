import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  double size;
  Color? color;
  final TextOverflow overflow;
   double height;
 SmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xFFccc7c5),
    this.size = 12,
    this.height = 1.2,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      
      overflow: overflow,
      style: TextStyle(
        height: height,
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
      ),
    );
  }
}
