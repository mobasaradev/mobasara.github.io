part of '../view/portfolio.dart';

class SelectedWork extends StatelessWidget {
  const SelectedWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        PrimaryHeader(
          title: "selected \nwork",
          subTitle: "A selection of my latest work.",
          trailingText: "Explore",
        ),

        const SizedBox(height: 32),

        // Cards
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: List.generate(
            5,
            (index) => ProjectCard(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2021/07/15/11/15/woman-6468147_1280.jpg',
              title: 'Project ${index + 1}',
              role: 'Role ${index + 1}',
            ),
          ),
        ),

        const SizedBox(height: 24),
        SecondaryButton(text: "See all projects →↗"),
      ],
    );
  }
}
