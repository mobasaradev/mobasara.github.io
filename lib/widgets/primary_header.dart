import 'package:flutter/material.dart';

class PrimaryHeader extends StatelessWidget {
  const PrimaryHeader({
    super.key,
    required this.title,
    required this.subTitle,
    required this.trailingText,
  });

  final String title;
  final String subTitle;
  final String trailingText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 64,
            fontFamily: "SingleDay",
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 1,
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Icon(
              Icons.circle,
              color: Color(0xFFffffff),
              size: 30,
            ),
            SizedBox(width: 12),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF00FFFF),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                trailingText.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          subTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
