import 'package:flutter/material.dart';
import 'package:mobasaradev/utils/app_color.dart';
import 'package:mobasaradev/utils/app_text.dart';

class ProjectCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String role;

  const ProjectCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFF1A1F2E).withAlpha(70),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextTheme.text14.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  role,
                  style: AppTextTheme.text12.copyWith(
                    color: AppColor.gray,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
