import 'package:flutter/material.dart';
import 'package:scube_app_task/widgets/rich_text.dart';

class DataViewCard extends StatelessWidget {
  final String leadingImage;
  final String titleIcon;
  final String title;
  final String statusText;
  final Color statusColor;
  final String data1Label;
  final String data1Value;
  final String data2Label;
  final String data2Value;

  const DataViewCard({
    super.key,
    required this.leadingImage,
    required this.titleIcon,
    required this.title,
    required this.statusText,
    this.statusColor = Colors.blue,
    required this.data1Label,
    required this.data1Value,
    required this.data2Label,
    required this.data2Value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade100,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.black54,
          width: .8,
        ),
      ),
      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              leadingImage,
              height: 25,
              width: 25,
            ),
          ),

          const SizedBox(width: 8),


          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(titleIcon),
                      const SizedBox(width: 8),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        statusText,
                        style: TextStyle(color: statusColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  DemoRichText(
                    highlightedText: "$data1Label :",
                    normalText: " $data1Value",
                  ),
                  DemoRichText(
                    highlightedText: "$data2Label :",
                    normalText: " $data2Value",
                  ),
                ],
              ),
            ),
          ),


          Icon(
            Icons.chevron_right_outlined,
            color: Colors.blue.shade900,
            size: 40,
          ),
        ],
      ),
    );
  }
}
