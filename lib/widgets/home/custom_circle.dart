import 'package:flutter/material.dart';

class CustomCircel extends StatelessWidget {
  const CustomCircel({
    Key? key,
    required this.subtitle,
    required this.content,
    required this.subtitleNum,
  }) : super(key: key);

  final String subtitle;
  final String content;
  final String subtitleNum;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey.shade400,
              width: 2,
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Text(
              content,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Text(subtitleNum),
            const SizedBox(width: 6),
            Text(subtitle),
          ],
        )
      ],
    );
  }
}
