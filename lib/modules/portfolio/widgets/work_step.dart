import 'package:flutter/material.dart';
import 'package:mobasaradev/utils/app_color.dart';
import 'package:mobasaradev/utils/app_text.dart';

class WorkStep extends StatelessWidget {
  const WorkStep({
    super.key,
    required this.title,
    required this.icon,
    this.isLeft = true,
    required this.details,
  });

  final String title;
  final IconData icon;
  final String details;
  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return isLeft
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.secondary.withOpacity(0.1),
                    border: Border.all(
                      color: AppColor.secondary,
                      width: 1,
                    ),
                  ),
                  child: Icon(icon, color: AppColor.secondary, size: 24),
                ),
                SizedBox(width: 24),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextTheme.text24,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        details,
                        style: AppTextTheme.text14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: AppTextTheme.text24,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          details,
                          style: AppTextTheme.text14,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 24),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.secondary.withOpacity(0.1),
                      border: Border.all(
                        color: AppColor.secondary,
                        width: 1,
                      ),
                    ),
                    child: Icon(icon, color: AppColor.secondary, size: 24),
                  ),
                ],
              ),
            ),
          );
  }
}
