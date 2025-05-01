part of '../view/portfolio.dart';

class WorkFlow extends StatelessWidget {
  const WorkFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            "Let me show How Do I Work".toUpperCase(),
            textAlign: TextAlign.center,
            style: AppTextTheme.text24.copyWith(
              fontFamily: "SingleDay",
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "Discover my work flow".toUpperCase(),
          textAlign: TextAlign.center,
          style: AppTextTheme.text48.copyWith(
            fontFamily: "Roboto",
          ),
        ),
        const SizedBox(height: 16),
        Divider(
          height: 40,
          thickness: 1,
          color: AppColor.gray.withOpacity(0.2),
          endIndent: 50,
          indent: 50,
        ),
        const SizedBox(height: 16),
        WorkStep(
          title: "Planning",
          icon: Icons.timeline,
          details:
              "I carefully plan each project with precise attention to goals and target audience.",
        ),
        const SizedBox(height: 24),
        WorkStep(
          title: "Concept & Strategy",
          icon: Icons.lightbulb_outline,
          details:
              "Building clear concepts and strategies that align with client visions and trends.",
          isLeft: false,
        ),
        const SizedBox(height: 24),
        WorkStep(
          title: "Bring to Real Life",
          icon: Icons.rocket_launch,
          details:
              "Transforming ideas into high-quality products that create real impact.",
        ),
      ],
    );
  }
}
