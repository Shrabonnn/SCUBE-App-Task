import 'package:flutter/material.dart';

class DemoRichText extends StatelessWidget {
  final String normalText;
  final String highlightedText;
  final Color highlightColor;

  const DemoRichText({
    Key? key,
    required this.normalText,
    required this.highlightedText,
    this.highlightColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: highlightedText,
            style: TextStyle(color: Colors.black54, fontSize: 16,),
          ),
          TextSpan(
            text: normalText,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
