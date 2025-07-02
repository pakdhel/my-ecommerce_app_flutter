import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PriceText extends StatelessWidget {
  final String value;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final bool isStrikethrough;
  const PriceText({
    super.key,
    required this.value,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    required this.color,
    this.isStrikethrough = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Rp',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            decoration: isStrikethrough ? TextDecoration.lineThrough : null,
            decorationColor: color,
            color: color,
          ),
        ),
        const SizedBox(width: 2),
        Expanded(
          child: Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              decoration: isStrikethrough ? TextDecoration.lineThrough : null,
              decorationColor: color,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
