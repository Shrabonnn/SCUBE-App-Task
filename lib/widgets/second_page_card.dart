import 'package:flutter/material.dart';

class SecondPageCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final double height;
  final double fontSize;

  const SecondPageCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.height = 45,
    this.fontSize =18
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 6),
              Image.asset(
                imagePath,
                width: 22,
                height: 22,
              ),
              SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
