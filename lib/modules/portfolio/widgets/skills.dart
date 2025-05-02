part of '../view/portfolio.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryHeader(
          title: "Favorite \nstack",
          subTitle: "Explore My Curated Top Skills",
          trailingText: "My skills",
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          alignment: WrapAlignment.center,
          children: [
            ' Dart ',
            'Flutter',
            'Firebase',
            'Push Notifications (Cloud Messaging)',
            'Supabase',
            'Socket IO',
            'Pusher',
            'Pusher',
            'C',
            'REST API',
            'Git',
            'Github',
          ]
              .map(
                (skill) => Chip(
                  backgroundColor: AppColor.transparent,
                  label: Text(
                    skill,
                    style: AppTextTheme.text14.copyWith(color: AppColor.white),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
