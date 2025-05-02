import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import '../widgets/widgets.dart';

part '../widgets/about_me.dart';
part '../widgets/briefing_card.dart';
part '../widgets/contact_info.dart';
part '../widgets/experience.dart';
part '../widgets/footer.dart';
part '../widgets/hero_area.dart';
part '../widgets/selected_work.dart';
part '../widgets/skills.dart';
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

              // Work Flow Section
              WorkFlow(),
              SizedBox(height: 64),

              // Experience Section
              PrimaryHeader(
                title: "Experience",
                subTitle: "Showcasing my work with the best brands.",
                trailingText: "2022 - present",
              ),
              const SizedBox(height: 32),
              Experience(
                orgName: "NRB Solution",
                position: "Mobile Application Developer",
                duration: "[Jan 25 - Present]",
              ),
              SizedBox(height: 24),
              Experience(
                orgName: "Connekt Studio",
                position: "Flutter Developer",
                duration: "[Jan 24 - Dec 24]",
              ),
              SizedBox(height: 24),
              Experience(
                orgName: "The Growing Developer",
                position: "Flutter developer (Internship)",
                duration: "[Mar 23 - Oct 23]",
              ),
              SizedBox(height: 64),

              // Skills
              Skills(),
              SizedBox(height: 64),

              // Contact Info
              ContactInfo(),
              SizedBox(height: 64),

              // Footer
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
