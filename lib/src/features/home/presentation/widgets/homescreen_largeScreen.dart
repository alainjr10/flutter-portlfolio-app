import 'package:dyce_portfolio/src/features/home/presentation/view_model/projects_providers.dart';
import 'package:dyce_portfolio/src/features/home/presentation/widgets/about_me_card.dart';
import 'package:dyce_portfolio/src/features/home/presentation/widgets/scroll_to_place_btn.dart';
import 'package:dyce_portfolio/src/features/home/presentation/widgets/skills_card.dart';
import 'package:dyce_portfolio/src/features/home/presentation/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../data/models/project_specs.dart';
import '../../data/models/skills_model.dart';
import 'single_project_card.dart';
import 'small_projects_card.dart';

class HomeScreenLargeScreen extends ConsumerWidget {
  const HomeScreenLargeScreen({
    super.key,
    required this.scrollToHomeKey,
    required this.scrollToAboutKey,
    required this.scrollToSkillsKey,
    required this.scrollToProjectsKey,
    required this.size,
    required this.textTheme,
    required this.aboutMeText,
    required this.skills,
    required this.projects,
  });

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
    final List<ProjectSpecs> firstFiveProjects = projects.sublist(0, 4);
    final List<ProjectSpecs> remainingProjects = projects.sublist(4);

    return Scaffold(
      appBar: AppBar(
        title: Lottie.asset(
          'assets/Lottie Lego.json',
          height: 100.0,
          width: 100.0,
          fit: BoxFit.cover,
        ),
        //  Text(
        //   'NA',
        //   style: kH3TextStyle.copyWith(fontSize: 40.0),
        // ),
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
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...firstFiveProjects.map((project) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleProjectCard(
                                size: size,
                                projectTitle: project.projectTitle,
                                projectDescription: project.projectDescription,
                                techStackUsed: project.techStackUsed,
                                displayImageUrl: project.displayImageUrl,
                                onTapped: () {
                                  context.push(
                                    '/projects/project_details/${project.projectTitle}',
                                    extra: project,
                                  );
                                },
                              ),
                              const SizedBox(height: 40.0),
                            ],
                          );
                        })
                      ],
                    ),
                  ),
                  // ListView.separated(
                  //   shrinkWrap: true,
                  //   // itemCount: projects.length,
                  //   physics: const NeverScrollableScrollPhysics(),
                  //   itemCount: firstFiveProjects.length,
                  //   separatorBuilder: (context, index) {
                  //     return const SizedBox(height: 40.0);
                  //   },
                  //   itemBuilder: (context, index) {
                  //     return SingleProjectCard(
                  //       size: size,
                  //       projectTitle: firstFiveProjects[index].projectTitle,
                  //       projectDescription:
                  //           firstFiveProjects[index].projectDescription,
                  //       techStackUsed: firstFiveProjects[index].techStackUsed,
                  //       displayImageUrl:
                  //           firstFiveProjects[index].displayImageUrl,
                  //       onTapped: () {
                  //         context.push(
                  //           '/projects/project_details/${firstFiveProjects[index].projectTitle}',
                  //           extra: firstFiveProjects[index],
                  //         );
                  //       },
                  //     );
                  //   },
                  // ),
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
                      shrinkWrap: true,
                      // itemCount: projects.length,
                      itemCount: remainingProjects.length,
                      itemBuilder: (context, index) {
                        return SmallerProjectsCard(
                          textTheme: textTheme,
                          projectTitle: remainingProjects[index].projectTitle,
                          projectDescription:
                              remainingProjects[index].projectDescription,
                          displayImageUrl:
                              remainingProjects[index].displayImageUrl,
                          onTapped: () {
                            context.push(
                              '/projects/project_details/${remainingProjects[index].projectTitle}',
                              extra: remainingProjects[index],
                            );
                          },
                          // onTapped: remainingProjects[index].onTapped,
                          techStackUsed: remainingProjects[index].techStackUsed,
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
