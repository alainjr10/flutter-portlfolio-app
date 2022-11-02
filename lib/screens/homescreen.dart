import 'package:dyce_portfolio/models/skills_model.dart';
import 'package:dyce_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/project_specs.dart';
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
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        surfaceTintColor: Colors.red,
        // backgroundColor: const Color.fromARGB(255, 24, 1, 44),
        backgroundColor: const Color(0xFF060706),
        actions: [
          TextButton(
            onPressed: () {},
            style: kHeadingTextButtonStyle,
            child: const Text("Home"),
          ),
          const SizedBox(width: 8.0),
          TextButton(
            onPressed: () {},
            style: kHeadingTextButtonStyle,
            child: const Text("Projects"),
          ),
          const SizedBox(width: 8.0),
          TextButton(
            onPressed: () {},
            style: kHeadingTextButtonStyle,
            child: const Text("About"),
          ),
          const SizedBox(width: 8.0),
          TextButton(
            onPressed: () {},
            style: kHeadingTextButtonStyle,
            child: const Text("Resume"),
          ),
          const SizedBox(width: 100.0),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Projects'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Contact'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('About Me'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.linkedinIn,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.envelope,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // about me
            AboutMeCard(
                textTheme: textTheme, size: size, aboutMeText: aboutMeText),
            // skills
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
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
                    margin: EdgeInsets.symmetric(
                        horizontal: size.width / 10, vertical: 20.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 25.0, horizontal: 40.0),
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
                    child: Wrap(
                      spacing: 50.0,
                      runSpacing: 20.0,
                      children: [
                        Card(
                          color: Colors.transparent,
                          elevation: 6.0,
                          child: Column(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.code,
                                color: Colors.white,
                                size: 50.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Flutter",
                                style: GoogleFonts.roboto(
                                  textStyle: textTheme.headline5?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.code,
                                color: Colors.white,
                                size: 50.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Flutter",
                                style: GoogleFonts.roboto(
                                  textStyle: textTheme.headline5?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.code,
                                color: Colors.white,
                                size: 50.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Flutter",
                                style: GoogleFonts.roboto(
                                  textStyle: textTheme.headline5?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.code,
                                color: Colors.white,
                                size: 50.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Flutter",
                                style: GoogleFonts.roboto(
                                  textStyle: textTheme.headline5?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.code,
                                color: Colors.white,
                                size: 50.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Flutter",
                                style: GoogleFonts.roboto(
                                  textStyle: textTheme.headline5?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.code,
                                color: Colors.white,
                                size: 50.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Flutter",
                                style: GoogleFonts.roboto(
                                  textStyle: textTheme.headline5?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.code,
                                color: Colors.white,
                                size: 50.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Flutter",
                                style: GoogleFonts.roboto(
                                  textStyle: textTheme.headline5?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.code,
                                color: Colors.white,
                                size: 50.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Flutter",
                                style: GoogleFonts.roboto(
                                  textStyle: textTheme.headline5?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
                        onTapped: () {},
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
                        childAspectRatio: size.width < 1015 ? 3 / 4 : 4 / 3.5,
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

  String aboutMeText =
      "I'm a front-end web developer and a Competitive Programmer active on different coding platforms such as Codeforces, "
      "CodeChef and LeetCode. I Love solving Complex Problems through power of Data Structures and Algorithms. I mostly code in C++. I also love "
      "to build website using HTML, CSS and Bootstrap. I am a teach-community entusiast and love to be a part of many communities. I also have "
      "community based ed-tech startup named as CodeMistic. Currently, I'm pursuing Bachelor of Technology from Lakshmi Narain College of "
      "Technology, Bhopal(India). I am passionate about coding and solving problems through code, and I am excited to work alongside other amazing "
      "programmers and learn so much more!";

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
      logo: "assets/images/flutter.png",
    ),
    SkillsModel(
      name: "Dart",
      logo: "assets/images/dart.png",
    ),
    SkillsModel(
      name: "Firebase",
      logo: "assets/images/firebase.png",
    ),
    SkillsModel(
      name: "HTML",
      logo: "assets/images/html.png",
    ),
    SkillsModel(
      name: "CSS",
      logo: "assets/images/css.png",
    ),
    SkillsModel(
      name: "Bootstrap",
      logo: "assets/images/bootstrap.png",
    ),
    SkillsModel(
      name: "JavaScript",
      logo: "assets/images/javascript.png",
    ),
    SkillsModel(
      name: "C++",
      logo: "assets/images/cpp.png",
    ),
    SkillsModel(
      name: "Java",
      logo: "assets/images/java.png",
    ),
    SkillsModel(
      name: "Python",
      logo: "assets/images/python.png",
    ),
    SkillsModel(
      name: "C",
      logo: "assets/images/c.png",
    ),
    SkillsModel(
      name: "C#",
      logo: "assets/images/csharp.png",
    ),
    SkillsModel(
      name: "PHP",
      logo: "assets/images/php.png",
    ),
    SkillsModel(
      name: "Laravel",
      logo: "assets/images/laravel.png",
    ),
    SkillsModel(
      name: "MySQL",
      logo: "assets/images/mysql.png",
    ),
    SkillsModel(
      name: "MongoDB",
      logo: "assets/images/mongodb.png",
    ),
    SkillsModel(
      name: "Git",
      logo: "assets/images/git.png",
    ),
    SkillsModel(
      name: "GitHub",
      logo: "assets/images/github.png",
    ),
    SkillsModel(
      name: "Linux",
      logo: "assets/images/linux.png",
    ),
    SkillsModel(
      name: "Windows",
      logo: "assets/images/windows.png",
    ),
    SkillsModel(
      name: "MacOS",
      logo: "assets/images/macos.png",
    ),
  ];
  
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
            margin: EdgeInsets.symmetric(
                horizontal: size.width / 10, vertical: 20.0),
            padding:
                const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40.0),
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
