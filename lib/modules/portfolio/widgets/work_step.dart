import 'package:flutter/material.dart';

class WorkStep extends StatelessWidget {
  final String title;
  final IconData icon;
  final String details;

  const WorkStep({
    super.key,
    required this.title,
    required this.icon,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF00FFFF).withOpacity(0.1),
                border: Border.all(
                  color: const Color(0xFF00FFFF),
                  width: 2,
                ),
              ),
              child: Icon(icon, color: const Color(0xFF00FFFF), size: 24),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          details,
          style: const TextStyle(color: Colors.grey, fontSize: 16),
        )
      ],
    );
  }
}
