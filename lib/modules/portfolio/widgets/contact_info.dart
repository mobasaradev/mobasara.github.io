part of '../view/portfolio.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Let's make your project a reality".toUpperCase(),
          textAlign: TextAlign.center,
          style: AppTextTheme.text34,
        ),
        const SizedBox(height: 24),
        Text(
          "\"collaborate with me to bring your ideal app to reality\""
              .toUpperCase(),
          textAlign: TextAlign.center,
          style: AppTextTheme.text16,
        ),
        const SizedBox(height: 24),
        PrimaryButton(text: "Contact now"),
        const SizedBox(height: 24),
        Text(
          "LinkedIn →",
          style: AppTextTheme.text16.copyWith(
            decoration: TextDecoration.underline,
            color: AppColor.white,
          ),
        ),
        SizedBox(height: 4),
        Text(
          "Github →",
          style: AppTextTheme.text16.copyWith(
            decoration: TextDecoration.underline,
            color: AppColor.white,
          ),
        ),
        SizedBox(height: 4),
        Text(
          "Mail: mobasaradev@gmail.com",
          style: AppTextTheme.text16.copyWith(
            color: AppColor.white,
            decoration: TextDecoration.underline,
          ),
        ),
        const SizedBox(height: 24),
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          child: Image.network(
            "https://cdn.pixabay.com/photo/2021/07/15/11/15/woman-6468147_1280.jpg",
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
