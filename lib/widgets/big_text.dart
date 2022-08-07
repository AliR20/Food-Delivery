

import 'package:e_commerce_model/utils/dimensions.dart';
import 'package:flutter/material.dart';


class BigText extends StatelessWidget {
  final String text;
  double size;
  Color? color;
  final TextOverflow overflow;

 BigText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF332d2b),
    this.size = 0,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        fontSize: size == 0? Dimensions.font20: size,
      ),
    );
  }
}
