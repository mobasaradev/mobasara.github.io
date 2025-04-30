import 'package:flutter/material.dart';
import 'package:mobasaradev/utils/app_text.dart';

import '../../../widgets/primary_button.dart';
import '../../../widgets/primary_header.dart';
import '../../../widgets/secondary_button.dart';
import '../widgets/project_card.dart';
import '../widgets/work_step.dart';

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mobasara K.©',
                    style: AppTextTheme.text18,
                  ),
                  PrimaryButton(
                    text: "Contact now",
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(height: 64),

              // Hero Area
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
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
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    "Application",
                    style: TextStyle(
                      fontFamily: "SingleDay",
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                  Text(
                    "Developer",
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00FFFF),
                      height: 1,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),
              SecondaryButton(text: "See all projects →↗"),
              const SizedBox(height: 32),

              // Profile Card with Glow
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF00FFFF).withOpacity(0.6),
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'ALL RIGHTS RESERVED ©',
                style: TextStyle(
                  color: Color(0xFF00FFFF),
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),

              const SizedBox(height: 64),

              // Projects Section Header
              PrimaryHeader(
                title: "selected work",
                subTitle: "A selection of my latest work.",
                trailingText: "Explore",
              ),

              const SizedBox(height: 24),

              // Project Cards
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF0A0F1C),
                      const Color(0xFF0A0F1C),
                      const Color(0xFF00FFFF).withAlpha(60),
                      const Color(0xFF0A0F1C),
                      const Color(0xFF0A0F1C),
                    ],
                  ),
                ),
                child: Wrap(
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
              ),

              const SizedBox(height: 24),
              SecondaryButton(text: "See all projects →↗"),
              const SizedBox(height: 32),

              // About Section
              PrimaryHeader(
                title: "About Mobasara",
                subTitle: "A selection of my latest work.",
                trailingText: "Let's work together",
              ),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF00FFFF).withOpacity(0.6),
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
                '[ABOUT ME]',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'ALEX DOE® A LEADING STRATEGIC DESIGNER THAT POSITIONS AND REDEFINES THE WORLD\'S BEST BRANDS',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '[MY MISSION]',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'ALEX DOE® A LEADING STRATEGIC DESIGNER THAT POSITIONS AND REDEFINES THE WORLD\'S BEST BRANDS',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              PrimaryButton(text: "DOWNLOAD CV"),
              const SizedBox(height: 32),

              // How Do I Work Section
              Text(
                "Let me show How Do I Work".toUpperCase(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Discover my work flow".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1,
                ),
              ),
              const SizedBox(height: 16),
              Divider(
                height: 40,
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
              ),
              const SizedBox(height: 24),

              WorkStep(
                title: "Bring to Real Life",
                icon: Icons.rocket_launch,
                details:
                    "Transforming ideas into high-quality products that create real impact.",
              ),

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
