import 'package:dyce_portfolio/models/skills_model.dart';
import 'package:dyce_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/project_specs.dart';
import '../widgets/homescreen_largeScreen.dart';
import '../widgets/homescreen_mobileScreen.dart';
import '../widgets/single_project_card.dart';
import '../widgets/small_projects_card.dart';

const double kPhoneScreenSize = 550.0;

class HomeScreen extends StatefulWidget {
  static const homeScreenId = '/homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final scrollToHomeKey = GlobalKey();
    final scrollToAboutKey = GlobalKey();
    final scrollToSkillsKey = GlobalKey();
    final scrollToProjectsKey = GlobalKey();
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.platformDefault,
      )) {
        throw 'Could not launch $url';
      }
    }

    Future<void> _launchMail(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.platformDefault,
      )) {
        throw 'Could not launch $url';
      }
    }

    return size.width < kMobileScreenSize
        ? HomeScreenMobile(
            scrollToHomeKey: scrollToHomeKey,
            scrollToAboutKey: scrollToAboutKey,
            scrollToSkillsKey: scrollToSkillsKey,
            scrollToProjectsKey: scrollToProjectsKey,
            size: size,
            textTheme: textTheme,
            aboutMeText: aboutMeText,
            skills: skills,
            projects: projects)
        : HomeScreenLargeScreen(
            scrollToHomeKey: scrollToHomeKey,
            scrollToAboutKey: scrollToAboutKey,
            scrollToSkillsKey: scrollToSkillsKey,
            scrollToProjectsKey: scrollToProjectsKey,
            size: size,
            textTheme: textTheme,
            aboutMeText: aboutMeText,
            skills: skills,
            projects: projects);
  }

  String aboutMeText =
      " I'm a full stack mobile app developer, backend web developer, and AI enthusiast. I have a strong passion for problem solving, using "
      "suitable algorithms and data strutures. I love building beautiful looking and highly peformant mobile applications using the Flutter "
      "SDK by google. I also enjoy introducing the younger generation into tech and being a teacher and mentor to them. "
      "\n As a Computer Engineering Bachelor degreee holder from the University of Bamenda, I'm currently in my final year pursuing a masters degree "
      "in Computer Engineering in the same school (National Higher Polytechnic Institute Bamenda). I'm always looking to work in a team, along "
      "with other brilliant developers on exciting problems, which provide a major solution through coding, as well as learning as much as I possibly can.";

  List<ProjectSpecs> projects = [
    ProjectSpecs(
      projectTitle: "Farmguard",
      projectDescription:
          "Farmguard - More than farm security is a farm management platform, aimed at helping users properly manage their farmland and crops. From features such as managing crop to buying and selling of Agricultural produce and much more, Farmguard is the complete Package",
      techStackUsed: [
        "Flutter",
        "Firebese",
        "Laravel",
      ],
      displayImageUrl: "assets/images/black_student2.jpg",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "Farmguard",
      projectDescription:
          "Farmguard - More than farm security is a farm management platform, aimed at helping users properly manage their farmland and crops. From features such as managing crop to buying and selling of Agricultural produce and much more, Farmguard is the complete Package",
      techStackUsed: [
        "Flutter",
        "Firebese",
        "Laravel",
      ],
      displayImageUrl: "assets/images/black_student2.jpg",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "Farmguard",
      projectDescription:
          "Farmguard - More than farm security is a farm management platform, aimed at helping users properly manage their farmland and crops. From features such as managing crop to buying and selling of Agricultural produce and much more, Farmguard is the complete Package",
      techStackUsed: [
        "Flutter",
        "Firebese",
        "Laravel",
      ],
      displayImageUrl: "assets/images/black_student2.jpg",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "Farmguard",
      projectDescription:
          "Farmguard - More than farm security is a farm management platform, aimed at helping users properly manage their farmland and crops. From features such as managing crop to buying and selling of Agricultural produce and much more, Farmguard is the complete Package",
      techStackUsed: [
        "Flutter",
        "Firebese",
        "Laravel",
      ],
      displayImageUrl: "assets/images/black_student2.jpg",
      onTapped: () {},
    ),
  ];

  List<SkillsModel> skills = [
    SkillsModel(
      name: "Flutter",
      logo: "assets/icons/icons8-flutter-100.png",
    ),
    SkillsModel(
      name: "Dart",
      logo: "assets/icons/icons8-dart-100.png",
    ),
    SkillsModel(
      name: "Firebase",
      logo: "assets/icons/icons8-firebase-100.png",
    ),
    SkillsModel(
      name: "HTML",
      logo: "assets/icons/icons8-html-5-100.png",
    ),
    SkillsModel(
      name: "CSS",
      logo: "assets/icons/icons8-css3-100.png",
    ),
    SkillsModel(
      name: "JavaScript",
      logo: "assets/icons/icons8-javascript-100.png",
    ),
    SkillsModel(
      name: "C++",
      logo: "assets/icons/icons8-c-plus-plus-100.png",
    ),
    SkillsModel(
      name: "C",
      logo: "assets/icons/icons8-c-programming-96.png",
    ),
    SkillsModel(
      name: "C#",
      logo: "assets/icons/icons8-c-sharp-logo2-100.png",
    ),
    SkillsModel(
      name: "PHP",
      logo: "assets/icons/icons8-php-logo-100.png",
    ),
    SkillsModel(
      name: "Laravel",
      logo:
          "assets/icons/icons8-laravel-is-a-free,-open-source-php-web-framework.-100.png",
    ),
    SkillsModel(
      name: "MySQL",
      logo: "assets/icons/icons8-mysql-100.png",
    ),
    SkillsModel(
      name: "Git",
      logo: "assets/icons/icons8-git-100.png",
    ),
    SkillsModel(
      name: "GitHub",
      logo: "assets/icons/icons8-github3-100.png",
    ),
    SkillsModel(
      name: "VS Code",
      logo: "assets/icons/icons8-visual-studio-code-2019-100.png",
    ),
    SkillsModel(
      name: "Android Studio",
      logo: "assets/icons/icons8-android-studio-100.png",
    ),
    SkillsModel(
      name: "Figma",
      logo: "assets/icons/icons8-figma-100.png",
    ),
    SkillsModel(
      name: "Wordpress",
      logo: "assets/icons/icons8-wordpress-100.png",
    ),
  ];
}

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key? key,
  }) : super(key: key);

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.platformDefault,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            _launchInBrowser(Uri.parse("https://twitter.com/dyceman10"));
          },
          icon: const FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        const SizedBox(width: 20.0),
        IconButton(
          onPressed: () {
            _launchInBrowser(Uri.parse("https://github.com/alainjr10"));
          },
          icon: const FaIcon(
            FontAwesomeIcons.github,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        const SizedBox(width: 20.0),
        IconButton(
          onPressed: () {
            _launchInBrowser(
                Uri.parse("https://www.linkedin.com/in/alain-jr-bba607172/"));
          },
          icon: const FaIcon(
            FontAwesomeIcons.linkedinIn,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        const SizedBox(width: 20.0),
        IconButton(
          onPressed: () {
            _launchInBrowser(Uri.parse("mailto:njokomalain@gmail.com"));
          },
          icon: const FaIcon(
            FontAwesomeIcons.envelope,
            color: Colors.white,
            size: 35.0,
          ),
        ),
      ],
    );
  }
}

class SkillsCard extends StatelessWidget {
  const SkillsCard({
    Key? key,
    required this.scrollToSkillsKey,
    required this.textTheme,
    required this.size,
    required this.skills,
  }) : super(key: key);

  final GlobalKey<State<StatefulWidget>> scrollToSkillsKey;
  final TextTheme textTheme;
  final Size size;
  final List<SkillsModel> skills;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: scrollToSkillsKey,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
      child: Column(
        children: [
          Text(
            "My Skills",
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
            height: 10.0,
          ),
          Container(
            margin: size.width > kMobileScreenSize
                ? EdgeInsets.symmetric(
                    horizontal: size.width / 10, vertical: 20.0)
                : EdgeInsets.symmetric(
                    horizontal: size.width / 10, vertical: 12.0),
            padding: size.width > kMobileScreenSize
                ? const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40.0)
                : const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            width: size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              // color: Color.fromARGB(255, 9, 1, 17),
              color: Color(0xFF060706),
              boxShadow: [
                BoxShadow(
                    offset: Offset(8.0, 15.0),
                    color: Color.fromARGB(255, 13, 15, 13),
                    blurRadius: 35.0,
                    blurStyle: BlurStyle.normal),
              ],
            ),
            child: size.width > kMobileScreenSize
                ? Wrap(
                    spacing: 50.0,
                    runSpacing: 20.0,
                    children: skills.map((e) {
                      return SkillCard(
                          size: size,
                          textTheme: textTheme,
                          name: e.name,
                          logo: e.logo);
                    }).toList(),
                  )
                : Wrap(
                    spacing: 20.0,
                    runSpacing: 12.0,
                    children: skills.map((e) {
                      return SkillCard(
                          size: size,
                          textTheme: textTheme,
                          name: e.name,
                          logo: e.logo);
                    }).toList(),
                  ),
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  const SkillCard({
    Key? key,
    required this.textTheme,
    required this.name,
    required this.logo,
    required this.size,
  }) : super(key: key);

  final TextTheme textTheme;
  final String name;
  final String logo;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 6.0,
      child: Column(
        children: [
          size.width > kMobileScreenSize
              ? Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(logo), fit: BoxFit.fill),
                  ),
                )
              : Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(logo), fit: BoxFit.fill),
                  ),
                ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            name,
            style: GoogleFonts.roboto(
              textStyle: size.width > kMobileScreenSize
                  ? kH4TextStyle.copyWith(fontSize: 14.0)
                  : kH4TextStyle.copyWith(fontSize: 13.0),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutMeCard extends StatelessWidget {
  const AboutMeCard({
    Key? key,
    required this.textTheme,
    required this.size,
    required this.aboutMeText,
  }) : super(key: key);

  final TextTheme textTheme;
  final Size size;
  final String aboutMeText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
      child: Column(
        children: [
          Text(
            "About Me",
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
            height: 10.0,
          ),
          Container(
            margin: size.width > kMobileScreenSize
                ? EdgeInsets.symmetric(
                    horizontal: size.width / 10, vertical: 20.0)
                : EdgeInsets.symmetric(
                    horizontal: size.width / 30, vertical: 12.0),
            padding: size.width > kMobileScreenSize
                ? const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40.0)
                : const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              // color: Color.fromARGB(255, 9, 1, 17),
              color: Color(0xFF060706),
              boxShadow: [
                BoxShadow(
                    offset: Offset(8.0, 15.0),
                    color: Color.fromARGB(255, 13, 15, 13),
                    blurRadius: 35.0,
                    blurStyle: BlurStyle.normal),
              ],
            ),
            child: Text(
              aboutMeText,
              style: kH4TextStyle.copyWith(
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
