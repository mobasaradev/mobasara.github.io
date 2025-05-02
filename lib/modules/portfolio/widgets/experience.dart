part of '../view/portfolio.dart';

class Experience extends StatelessWidget {
  const Experience({
    super.key,
    required this.orgName,
    required this.position,
    required this.duration,
  });
  final String orgName;
  final String position;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 15),
                Icon(
                  Icons.business,
                  color: AppColor.secondary,
                  size: 24,
                ),
              ],
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orgName,
                    style: AppTextTheme.text18.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    position,
                    style: AppTextTheme.text18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontFamily: "SingleDay",
                    ),
                  ),
                ],
              ),
            ),
            Text(
              duration,
              style: AppTextTheme.text12,
            ),
          ],
        ),
      ],
    );
  }
}
