import 'package:dyce_portfolio/src/features/home/presentation/widgets/about_me_card.dart';
import 'package:dyce_portfolio/src/features/home/presentation/widgets/skills_card.dart';
import 'package:dyce_portfolio/src/features/home/presentation/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models/project_specs.dart';
import '../../data/models/skills_model.dart';
import '../screens/project_details.dart';
import '../../../../../app/utils/constants.dart';
import 'single_project_card.dart';
import 'small_projects_card.dart';

class HomeScreenLargeScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
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
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                scrollToHomeKey.currentContext!,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              );
            },
            style: kHeadingTextButtonStyle,
            child: const Text("Home"),
          ),
          const SizedBox(width: 8.0),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                scrollToAboutKey.currentContext!,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              );
            },
            style: kHeadingTextButtonStyle,
            child: const Text("About"),
          ),
          const SizedBox(width: 8.0),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                scrollToSkillsKey.currentContext!,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              );
            },
            style: kHeadingTextButtonStyle,
            child: const Text("Skills"),
          ),
          const SizedBox(width: 8.0),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                scrollToProjectsKey.currentContext!,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              );
            },
            style: kHeadingTextButtonStyle,
            child: const Text("Projects"),
          ),
          const SizedBox(width: 100.0),
        ],
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: const <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 24,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.message),
      //         title: Text('Projects'),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.account_circle),
      //         title: Text('Contact'),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('About Me'),
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
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
                          "Software Engineer, Software Developer, Freelancer. \nMobile App Developer, building reliable and scalable cross platform mobile apps with Flutter SDK. \nBackend web developer",
                          style: GoogleFonts.roboto(
                            textStyle: textTheme.titleLarge?.copyWith(
                              color: Colors.white,
                              letterSpacing: 2.0,
                              wordSpacing: 8.0,
                            ),
                          ),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProjectDetailsScreen(
                                project: projects[index]);
                          }));
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
