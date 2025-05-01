import 'package:flutter/material.dart';
import 'package:mobasaradev/utils/app_color.dart';
import 'package:mobasaradev/utils/app_text.dart';

import '../../../widgets/primary_button.dart';
import '../../../widgets/primary_header.dart';
import '../../../widgets/secondary_button.dart';
import '../widgets/project_card.dart';
import '../widgets/work_step.dart';

part '../widgets/about_me.dart';
part '../widgets/briefing_card.dart';
part '../widgets/hero_area.dart';
part '../widgets/selected_work.dart';
part '../widgets/work_flow.dart';

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mobasara K.©',
                    style: AppTextTheme.text14,
                  ),
                  PrimaryButton(
                    text: "Contact now",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 64),

              // Hero Area
              HeroArea(),
              const SizedBox(height: 64),

              // Briefing Card with Glow
              BriefingCard(),
              const SizedBox(height: 64),

              // Selected Work Section
              SelectedWork(),
              const SizedBox(height: 64),

              // About Section
              AboutMe(),
              const SizedBox(height: 64),

              // How Do I Work Section
              WorkFlow(),
      

              SizedBox(height: 64),

              // Experience Section
              PrimaryHeader(
                  title: "Experience",
                  subTitle: "Showcasing my work with the best brands.",
                  trailingText: "2022 - present"),

              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.business,
                      color: const Color(0xFF00FFFF),
                      size: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Company Name",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "Position",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "[2021 - Present]",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.business,
                      color: const Color(0xFF00FFFF),
                      size: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Company Name",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "Position",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "[2021 - Present]",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.business,
                      color: const Color(0xFF00FFFF),
                      size: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Company Name",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "Position",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "[2021 - Present]",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 32),

              // Skills
              PrimaryHeader(
                title: "Favorite stack",
                subTitle: "Explore My Curated Top Skills",
                trailingText: "My skills",
              ),

              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  'React',
                  'Next.js',
                  'Node.js',
                  'Express',
                  'MongoDB',
                  'Tailwind CSS',
                  'TypeScript',
                  'Docker'
                ]
                    .map((skill) => Chip(
                          backgroundColor: const Color(0xFF111827),
                          label: Text(skill,
                              style: const TextStyle(color: Colors.white)),
                        ))
                    .toList(),
              ),
              SizedBox(height: 32),
              // Contact Info

              Text(
                "Let's make your project a reality".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "\"collaborate with me to bring your ideal app to reality\""
                    .toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  height: 1,
                ),
              ),
              const SizedBox(height: 12),
              PrimaryButton(text: "Contact now"),
              const SizedBox(height: 32),
              const Text(
                "LinkedIn →",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const Text(
                "Github →",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                ),
              ),

              Text(
                "Mail: mobasaradev@gmail.com",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                ),
              ),

              const SizedBox(height: 16),
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2021/07/15/11/15/woman-6468147_1280.jpg",
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    "Mobasara".toUpperCase(),
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.circle, color: Color(0xFF00FFFF), size: 12),
                ],
              ),
              Divider(),
              Text(
                "copyright © 2025",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
