import 'package:flutter/material.dart';

class TableText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const TableText(
      this.text, {
        super.key,
        this.fontSize = 14,
        this.fontWeight = FontWeight.w600,
        this.color = Colors.black,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
