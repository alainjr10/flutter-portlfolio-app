import 'package:dyce_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/project_specs.dart';

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
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              child: Column(
                children: [
                  Text(
                    "My Projects",
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
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 25.0,
                        mainAxisSpacing: 20.0,
                        childAspectRatio: 4 / 3,
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
}

class SmallerProjectsCard extends StatelessWidget {
  const SmallerProjectsCard({
    Key? key,
    required this.textTheme,
    required this.projectTitle,
    required this.projectDescription,
    required this.techStackUsed,
    required this.displayImageUrl,
    required this.onTapped,
  }) : super(key: key);

  final TextTheme textTheme;
  final String projectTitle;
  final String projectDescription;
  final List<String> techStackUsed;
  final String displayImageUrl;
  final Function() onTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 200.0,
      decoration: const BoxDecoration(
        color: Color(0xFF060706),
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectTitle,
            style: GoogleFonts.roboto(
              textStyle: kH3TextStyle,
            ),
          ),
          Row(
            children: techStackUsed.map((e) {
              return Text("$e,", style: kH5TextStyle);
            }).toList(),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            projectDescription,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: kH4TextStyle.copyWith(
              fontSize: 16.0,
              letterSpacing: 1.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: onTapped,
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.white.withOpacity(0.2),
              backgroundColor: const Color(0xFF060706),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                side: BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              fixedSize: const Size(140.0, 40.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            ),
            child: Row(
              children: const [
                Text("See Project"),
                SizedBox(width: 8.0),
                Icon(Icons.arrow_forward, size: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SingleProjectCard extends StatelessWidget {
  const SingleProjectCard({
    Key? key,
    required this.size,
    required this.projectTitle,
    required this.projectDescription,
    required this.techStackUsed,
    required this.displayImageUrl,
    required this.onTapped,
  }) : super(key: key);

  final Size size;
  final String projectTitle;
  final String projectDescription;
  final List<String> techStackUsed;
  final String displayImageUrl;
  final Function() onTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width / 10, vertical: 20.0),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 65.0, horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(projectTitle, style: kH3TextStyle),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: techStackUsed.map((e) {
                          return Text("$e,", style: kH5TextStyle);
                        }).toList(),
                      ),
                      // Text("Flutter, Firebase, Laravel", style: kH5TextStyle),
                      const SizedBox(
                        height: 10.0,
                      ),
                      // Text(
                      //   "Yo dyce man. my other name is jaburata, but sometimes, i behave like kakaraka",
                      //   style: kH4TextStyle,
                      // ),
                      Text(
                        projectDescription,
                        style: kH4TextStyle,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ElevatedButton.icon(
                    onPressed: onTapped,
                    label: const Text("See Project"),
                    icon: const Icon(Icons.arrow_forward, size: 32.0),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.2),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              height: 300.0,
              margin: const EdgeInsets.only(
                  top: 55.0, bottom: 55.0, right: 70.0, left: 40.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30.0),
                ),
                image: DecorationImage(
                  image: AssetImage(displayImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
