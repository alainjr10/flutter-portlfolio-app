import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/project_specs.dart';
import '../models/skills_model.dart';
import '../screens/homescreen.dart';
import '../utils/constants.dart';
import 'single_project_card.dart';
import 'small_projects_card.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({
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
      ),
      drawer: Drawer(
        backgroundColor: kPrimaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(),
            ),
            TextButton(
              onPressed: () {
                Scrollable.ensureVisible(
                  scrollToHomeKey.currentContext!,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
                Navigator.pop(context);
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
                Navigator.pop(context);
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
                Navigator.pop(context);
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
                Navigator.pop(context);
              },
              style: kHeadingTextButtonStyle,
              child: const Text("Projects"),
            ),
            const SizedBox(width: 100.0),
          ],
        ),
      ),
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
                          textStyle: textTheme.headline1?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 52.0,
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
                              fontSize: 18.0,
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
                      textStyle: textTheme.headline4?.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.6,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        decorationStyle: TextDecorationStyle.double,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ListView.separated(
                    primary: true,
                    shrinkWrap: true,
                    itemCount: projects.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 30.0);
                    },
                    itemBuilder: (context, index) {
                      return SingleProjectCardMobile(
                        size: size,
                        projectTitle: projects[index].projectTitle,
                        projectDescription: projects[index].projectDescription,
                        techStackUsed: projects[index].techStackUsed,
                        displayImageUrl: projects[index].displayImageUrl,
                        onTapped: () {},
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ListView.separated(
                    primary: true,
                    shrinkWrap: true,
                    itemCount: projects.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 30.0);
                    },
                    itemBuilder: (context, index) {
                      // return SmallerProjectsCard(
                      //   textTheme: textTheme,
                      //   projectTitle: projects[index].projectTitle,
                      //   projectDescription:
                      //       projects[index].projectDescription,
                      //   displayImageUrl: projects[index].displayImageUrl,
                      //   onTapped: projects[index].onTapped,
                      //   techStackUsed: projects[index].techStackUsed,
                      // );
                      return SingleProjectCardMobile(
                        size: size,
                        projectTitle: projects[index].projectTitle,
                        projectDescription: projects[index].projectDescription,
                        techStackUsed: projects[index].techStackUsed,
                        displayImageUrl: projects[index].displayImageUrl,
                        onTapped: () {},
                      );
                    },
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
