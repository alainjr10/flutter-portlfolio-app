import 'package:dyce_portfolio/app/utils/constants.dart';
import 'package:dyce_portfolio/src/features/home/presentation/view_model/projects_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/homescreen_largeScreen.dart';
import '../widgets/homescreen_mobileScreen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollToHomeKey = GlobalKey();
    final scrollToAboutKey = GlobalKey();
    final scrollToSkillsKey = GlobalKey();
    final scrollToProjectsKey = GlobalKey();
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    final projectsProvider = ref.watch(projectsRepoProvider);

    return size.width < kMobileScreenSize
        ? HomeScreenMobile(
            scrollToHomeKey: scrollToHomeKey,
            scrollToAboutKey: scrollToAboutKey,
            scrollToSkillsKey: scrollToSkillsKey,
            scrollToProjectsKey: scrollToProjectsKey,
            size: size,
            textTheme: textTheme,
            aboutMeText: projectsProvider.getAboutMeText(),
            skills: projectsProvider.getSkills(),
            projects: projectsProvider.getProjects(),
          )
        : HomeScreenLargeScreen(
            scrollToHomeKey: scrollToHomeKey,
            scrollToAboutKey: scrollToAboutKey,
            scrollToSkillsKey: scrollToSkillsKey,
            scrollToProjectsKey: scrollToProjectsKey,
            size: size,
            textTheme: textTheme,
            aboutMeText: projectsProvider.getAboutMeText(),
            skills: projectsProvider.getSkills(),
            projects: projectsProvider.getProjects(),
          );
  }
}
