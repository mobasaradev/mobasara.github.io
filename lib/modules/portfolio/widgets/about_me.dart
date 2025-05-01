part of '../view/portfolio.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryHeader(
          title: "About \nMobasara",
          subTitle: "A selection of my latest work.",
          trailingText: "Let's work together",
        ),
        const SizedBox(height: 32),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: AppColor.secondary.withOpacity(0.2),
                blurRadius: 30,
                spreadRadius: 5,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://cdn.pixabay.com/photo/2021/07/15/11/15/woman-6468147_1280.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          '[ABOUT ME]',
          style: AppTextTheme.text14,
        ),
        const SizedBox(height: 8),
        Text(
          'ALEX DOE® A LEADING STRATEGIC DESIGNER THAT POSITIONS AND REDEFINES THE WORLD\'S BEST BRANDS',
          style: AppTextTheme.text14,
        ),
        const SizedBox(height: 24),
        Text(
          '[MY MISSION]',
          style: AppTextTheme.text14,
        ),
        const SizedBox(height: 8),
        Text(
          'ALEX DOE® A LEADING STRATEGIC DESIGNER THAT POSITIONS AND REDEFINES THE WORLD\'S BEST BRANDS',
          style: AppTextTheme.text14,
        ),
        const SizedBox(height: 32),
        PrimaryButton(text: "DOWNLOAD CV"),
      ],
    );
  }
}
