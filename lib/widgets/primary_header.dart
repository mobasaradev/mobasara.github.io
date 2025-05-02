import 'package:flutter/material.dart';
import '../utils/app_color.dart';
import '../utils/app_text.dart';

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
          style: AppTextTheme.text56,
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Icon(
              Icons.circle,
              color: AppColor.white,
              size: 20,
            ),
            SizedBox(width: 12),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                color: AppColor.secondary,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                trailingText.toUpperCase(),
                style: AppTextTheme.text12.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColor.black,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Text(
          subTitle,
          style: AppTextTheme.text14,
        ),
      ],
    );
  }
}
