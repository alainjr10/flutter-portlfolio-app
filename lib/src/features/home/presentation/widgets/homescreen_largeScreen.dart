import 'package:dyce_portfolio/src/features/home/presentation/view_model/projects_providers.dart';
import 'package:dyce_portfolio/src/features/home/presentation/widgets/about_me_card.dart';
import 'package:dyce_portfolio/src/features/home/presentation/widgets/scroll_to_place_btn.dart';
import 'package:dyce_portfolio/src/features/home/presentation/widgets/skills_card.dart';
import 'package:dyce_portfolio/src/features/home/presentation/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/project_specs.dart';
import '../../data/models/skills_model.dart';
import '../../../../../app/utils/constants.dart';
import 'single_project_card.dart';
import 'small_projects_card.dart';

class HomeScreenLargeScreen extends ConsumerWidget {
  const HomeScreenLargeScreen({
    Key? key,
    required this.scrollToHomeKey,
    required this.scrollToAboutKey,
    required this.scrollToSkillsKey,
    required this.scrollToProjectsKey,
    required this.size,
    required this.textTheme,
    required this.aboutMeText,
    required this.skills,
    required this.projects,
  }) : super(key: key);

  final GlobalKey<State<StatefulWidget>> scrollToHomeKey;
  final GlobalKey<State<StatefulWidget>> scrollToAboutKey;
  final GlobalKey<State<StatefulWidget>> scrollToSkillsKey;
  final GlobalKey<State<StatefulWidget>> scrollToProjectsKey;
  final Size size;
  final TextTheme textTheme;
  final String aboutMeText;
  final List<SkillsModel> skills;
  final List<ProjectSpecs> projects;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectsProvider = ref.watch(projectsRepoProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NA',
          style: kH3TextStyle.copyWith(fontSize: 40.0),
        ),
        surfaceTintColor: Colors.red,
        // backgroundColor: const Color.fromARGB(255, 24, 1, 44),
        backgroundColor: const Color(0xFF060706),
        actions: [
          buildScrollableButton(
            context,
            "Home",
            scrollToHomeKey,
            popBack: false,
          ),
          buildScrollableButton(
            context,
            "About",
            scrollToAboutKey,
            popBack: false,
          ),
          buildScrollableButton(
            context,
            "Skills",
            scrollToSkillsKey,
            popBack: false,
          ),
          buildScrollableButton(
            context,
            "Projects",
            scrollToProjectsKey,
            popBack: false,
          ),
          const SizedBox(width: 100.0),
        ],
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          children: [
            Container(
              key: scrollToHomeKey,
              constraints: BoxConstraints(
                minHeight: size.height * 0.55,
              ),
              // height: size.height * 0.55,
              width: size.width,
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Njokom Alain",
                        style: GoogleFonts.roboto(
                          textStyle: textTheme.displayLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 72.0,
                            letterSpacing: 2.0,
                            wordSpacing: 8.0,
                          ),
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(maxWidth: 750.0),
                        child: Text(
                          projectsProvider.briefDescription(),
                          style: GoogleFonts.roboto(
                            textStyle: textTheme.titleLarge?.copyWith(
                              color: Colors.white,
                              letterSpacing: 2.0,
                              wordSpacing: 8.0,
                            ),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      const SocialIcons(),
                    ],
                  ),
                ),
              ),
            ),
            // about me
            AboutMeCard(
                key: scrollToAboutKey,
                textTheme: textTheme,
                size: size,
                aboutMeText: aboutMeText),
            // skills
            SkillsCard(
                scrollToSkillsKey: scrollToSkillsKey,
                textTheme: textTheme,
                size: size,
                skills: skills),
            Container(
              key: scrollToProjectsKey,
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              child: Column(
                children: [
                  Text(
                    "Projects",
                    style: GoogleFonts.roboto(
                      textStyle: textTheme.headlineMedium?.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.6,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        decorationStyle: TextDecorationStyle.double,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  ListView.separated(
                    primary: true,
                    shrinkWrap: true,
                    itemCount: projects.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 40.0);
                    },
                    itemBuilder: (context, index) {
                      return SingleProjectCard(
                        size: size,
                        projectTitle: projects[index].projectTitle,
                        projectDescription: projects[index].projectDescription,
                        techStackUsed: projects[index].techStackUsed,
                        displayImageUrl: projects[index].displayImageUrl,
                        onTapped: () {
                          context.push(
                            '/projects/project_details/${projects[index].projectTitle}',
                            extra: projects[index],
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    // height: 300.0,
                    margin: EdgeInsets.symmetric(
                        horizontal: size.width / 10, vertical: 20.0),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: size.width < 815 ? 2 : 3,
                        crossAxisSpacing: 25.0,
                        mainAxisSpacing: 20.0,
                        childAspectRatio: size.width < 1015 ? 3 / 4 : 4 / 4,
                      ),
                      primary: true,
                      shrinkWrap: true,
                      itemCount: projects.length,
                      itemBuilder: (context, index) {
                        return SmallerProjectsCard(
                          textTheme: textTheme,
                          projectTitle: projects[index].projectTitle,
                          projectDescription:
                              projects[index].projectDescription,
                          displayImageUrl: projects[index].displayImageUrl,
                          onTapped: projects[index].onTapped,
                          techStackUsed: projects[index].techStackUsed,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
