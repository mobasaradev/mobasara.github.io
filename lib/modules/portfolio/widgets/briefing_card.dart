part of '../view/portfolio.dart';

class BriefingCard extends StatelessWidget {
  const BriefingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF00FFFF).withOpacity(0.2),
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
        const SizedBox(height: 16),
        const Text(
          'ALEX DOE® A LEADING STRATEGIC DESIGNER THAT POSITIONS AND REDEFINES THE WORLD\'S BEST BRANDS.',
          style: AppTextTheme.text14,
        ),
        const SizedBox(height: 16),
        Text(
          'ALL RIGHTS RESERVED ©',
          style: AppTextTheme.text14.copyWith(
            color: AppColor.secondary,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
