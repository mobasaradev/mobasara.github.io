part of'../view/portfolio.dart';

class HeroArea extends StatelessWidget {
  const HeroArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.watch_later_outlined,
              color: Color(0xFF00FFFF),
              size: 12,
            ),
            SizedBox(width: 8),
            Text(
              "PROJECT WILL KICKOFF WITHIN 24 HOURS",
              style: AppTextTheme.text12,
            ),
          ],
        ),
        SizedBox(height: 32),
        Text(
          "Application",
          style: AppTextTheme.text48,
        ),
        Text(
          "Developer",
          style: AppTextTheme.text72,
        ),
        SizedBox(height: 32),
        SecondaryButton(text: "See all projects →↗"),
      ],
    );
  }
}
