part of '../view/portfolio.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Mobasara".toUpperCase(),
              style: AppTextTheme.text12,
            ),
            const SizedBox(width: 8),
            const Icon(Icons.circle, color: AppColor.secondary, size: 12),
          ],
        ),
        Divider(
          height: 40,
          thickness: 1,
          color: AppColor.secondary.withOpacity(0.2),
          endIndent: 250,
        ),
        Text(
          "copyright © 2025",
          style: AppTextTheme.text12,
        ),
      ],
    );
  }
}
