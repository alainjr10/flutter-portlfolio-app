import 'package:dyce_portfolio/src/features/home/data/models/skills_model.dart';

class ProjectsLocalDataSrc {
  String aboutMeText() =>
      "I'm Njokom Alain Junior, a software developer from Cameroon. As a software developer, I have a speciality as a full stack mobile app developer, "
      "backend developer, and an AI enthusiast. I have a strong passion for problem solving, using suitable algorithms and data strutures. I love building beautiful looking and highly peformant mobile applications using the Flutter SDK by google and implementing functionality, mostly with Firebase, and Rest APIs. I also enjoy introducing the younger generation into tech and being a teacher and mentor to them. \nAsides from that, I have a decent knowledge of Native android app development with Kotlin, and I'm currently learning and improving my skillset in that area. Along with that, I'm currently learning backend development with NodeJS. \nI'm a Computer Engineering Masters degreee holder from the University of Bamenda, (National Higher Polytechnic Institute Bamenda).  I'm always looking to work in a team, and collaborate with other brilliant developers on exciting problems, which provide a major solution through coding, as well as learning as much as I possibly can.";

  List<SkillsModel> returnSkills() => skills;

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
