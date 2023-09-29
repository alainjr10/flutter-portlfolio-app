import 'package:dyce_portfolio/src/features/home/data/models/project_specs.dart';
import 'package:dyce_portfolio/src/features/home/data/models/skills_model.dart';

class ProjectsLocalDataSrc {
  String aboutMeText() =>
      "I'm Njokom Alain Junior, a software developer from Cameroon. As a software developer, I have a speciality as a full stack mobile app developer, "
      "backend developer, and an AI enthusiast. I have a strong passion for problem solving, using suitable algorithms and data strutures. I love building beautiful looking and highly peformant mobile applications using the Flutter SDK by google and implementing functionality, mostly with Firebase, and Rest APIs. I also enjoy introducing the younger generation into tech and being a teacher and mentor to them. \nAsides from that, I have a decent knowledge of Native android app development with Kotlin, and I'm currently learning and improving my skillset in that area. Along with that, I'm currently learning backend development with NodeJS. \nI'm a Computer Engineering Masters degreee holder from the University of Bamenda, (National Higher Polytechnic Institute Bamenda).  I'm always looking to work in a team, and collaborate with other brilliant developers on exciting problems, which provide a major solution through coding, as well as learning as much as I possibly can.";

  String briefDescription() =>
      "Software Engineer, Software Developer, Freelancer. \nMobile App Developer, building reliable and scalable cross platform mobile apps with Flutter SDK Building highly performant native android apps with Kotlin and jetpack compose. \nBackend developer";

  List<SkillsModel> returnSkills() => skills;

  List<ProjectSpecs> getProjects() => projects;

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
      name: "Kotlin",
      logo: "assets/icons/icons8-kotlin-100.png",
    ),
    SkillsModel(
      name: "Typescript",
      logo: "assets/icons/icons8-typescript-100.png",
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

  List<ProjectSpecs> projects = [
    ProjectSpecs(
      projectTitle: "Mbelemama",
      projectDescription:
          "Connecting local farmers to Retailers and Consumers. Mbelemama is an agricultural contracting platform which connects agro producers with large scale retailers, and also with local banks and microfinance institutions. Mbelemama helps farmers get access to loans, and also helps them get into contracts with retailers even before the beginning of the farming season, thereby strealining the process of production to market line.",
      techStackUsed: [
        "Flutter",
        "Firebase Suite",
        "Typescript",
        "Google Cloud",
        "Rest APIs",
        "Codemagic CI/CD",
      ],
      projectImagesUrl: [
        "assets/projects_images/mbelemama/cover.png",
        'assets/projects_images/mbelemama/1.png',
        'assets/projects_images/mbelemama/2.png',
        'assets/projects_images/mbelemama/3.png',
        'assets/projects_images/mbelemama/4.png',
        'assets/projects_images/mbelemama/5.png',
        'assets/projects_images/mbelemama/6.png',
        'assets/projects_images/mbelemama/7.png',
      ],
      displayImageUrl: "assets/projects_images/mbelemama/cover.png",
      projectStatus: 'In Progress',
      projectWebUrl: "https://mbelemama.com/",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "EcoCaasitech - Agent",
      projectDescription:
          "EcoCaasitech agent is the agent side of the EcoCaasitech Platform. EcoCaasitech is a platform that helps users properly clean and dispose of their house hold waste by connecting them with EcoCaasitech waste disposal agents nearby. The agent app is used by EcoCaasitech agents to view, accept and complete orders from users (owners), and also to manage their profile and earnings, Agents can also view, book and attend events and so much more",
      techStackUsed: [
        "Flutter",
        "Firebase Suite",
        "Rest APIs",
        "GCP",
        "Google Maps",
      ],
      projectImagesUrl: [
        "assets/projects_images/ecocaasitech_agent/cover.jpg",
        'assets/projects_images/ecocaasitech_agent/1.jpg',
        'assets/projects_images/ecocaasitech_agent/2.jpg',
        'assets/projects_images/ecocaasitech_agent/3.jpg',
        'assets/projects_images/ecocaasitech_agent/4.jpg',
        'assets/projects_images/ecocaasitech_agent/5.jpg',
        'assets/projects_images/ecocaasitech_agent/6.jpg',
        'assets/projects_images/ecocaasitech_agent/7.jpg',
      ],
      displayImageUrl: "assets/projects_images/ecocaasitech_agent/cover.jpg",
      projectStatus: 'In Progress',
      projectWebUrl: "https://ecocaasitech.caasitech.co/",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "EcoCaasitech - Owner",
      projectDescription:
          "EcoCaasitech owner is the owner side of the EcoCaasitech Platform. EcoCaasitech is a platform that helps users properly clean and dispose of their house hold waste by connecting them with EcoCaasitech waste disposal agents nearby. The owner app is used by EcoCaasitech owners, (households and commercial businesses alike) to request for waste disposal services, and also to manage their profile and payments and so much more",
      techStackUsed: [
        "Flutter",
        "Firebase",
        "Rest APIs",
        "GCP",
        "Google Maps",
      ],
      projectImagesUrl: [
        "assets/projects_images/ecocaasitech_owner/cover.jpg",
        'assets/projects_images/ecocaasitech_owner/1.jpg',
        'assets/projects_images/ecocaasitech_owner/2.jpg',
        'assets/projects_images/ecocaasitech_owner/3.jpg',
        'assets/projects_images/ecocaasitech_owner/4.jpg',
      ],
      displayImageUrl: "assets/projects_images/ecocaasitech_owner/cover.jpg",
      projectStatus: 'In Progress',
      projectWebUrl: "https://ecocaasitech.caasitech.co/",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "One Market Customer",
      projectDescription:
          "One Market is a platform which soughts to ease buying and selling in Cameroon through E-commerce with efficiency and innovation offered to our Users. The One Market Customer app is used by customers to browse, search, explore and buy products from Vendors. With the one market Customer app, users are able to place orders, manage their orders and complete buying transactions with ease.",
      techStackUsed: [
        "Flutter",
        "Rest APIs",
      ],
      onTapped: () {},
      projectImagesUrl: [
        "assets/projects_images/one_market_customer/cover.jpg",
        'assets/projects_images/one_market_customer/1.jpg',
        'assets/projects_images/one_market_customer/2.jpg',
        'assets/projects_images/one_market_customer/3.jpg',
        'assets/projects_images/one_market_customer/4.jpg',
        'assets/projects_images/one_market_customer/5.jpg',
        'assets/projects_images/one_market_customer/6.jpg',
        'assets/projects_images/one_market_customer/7.jpg',
        'assets/projects_images/one_market_customer/8.jpg',
        'assets/projects_images/one_market_customer/9.jpg'
      ],
      displayImageUrl: "assets/projects_images/one_market_customer/cover.jpg",
      projectStatus: 'In Progress',
      projectWebUrl: "https://about.onemarketc.com/",
    ),
    ProjectSpecs(
      projectTitle: "One Market Vendor",
      projectDescription:
          "One Market is a platform which soughts to ease buying and selling in Cameroon through E-commerce with efficiency and innovation offered to our Users. The One Market App was developed for Vendors to list their items, manage their shop, and track buy orders from customers. Vendors can create invoices, manage transactions and manage product delivery at the end of each transaction",
      techStackUsed: [
        "Flutter",
        "Rest APIs",
      ],
      projectImagesUrl: [
        'assets/projects_images/one_market_vendor/cover.jpg',
        'assets/projects_images/one_market_vendor/1.jpg',
        'assets/projects_images/one_market_vendor/2.jpg',
        'assets/projects_images/one_market_vendor/3.jpg',
        'assets/projects_images/one_market_vendor/4.jpg',
        'assets/projects_images/one_market_vendor/5.jpg',
        'assets/projects_images/one_market_vendor/6.jpg',
        'assets/projects_images/one_market_vendor/7.jpg',
      ],
      displayImageUrl: "assets/projects_images/one_market_vendor/cover.jpg",
      onTapped: () {},
      projectStatus: 'In Progress',
      projectWebUrl: "https://about.onemarketc.com/",
    ),
    ProjectSpecs(
      projectTitle: "Decorride",
      projectDescription:
          "Decorride uses Flutter and the power of google's ARCore library and Apple's AR Kit library to  provide users with an app whereby, they can use to place and decorate their interior spaces with available 3D furnniture on the platform. It uses augmented reality technology to provide users with an immersive and interactive experience.",
      techStackUsed: [
        "Flutter",
        "ARCore",
        "ARKit",
        "Firebese",
      ],
      projectImagesUrl: [
        "assets/projects_images/decorride/cover.png",
        'assets/projects_images/decorride/1.png',
        'assets/projects_images/decorride/2.png',
        'assets/projects_images/decorride/3.png',
        'assets/projects_images/decorride/4.png',
        'assets/projects_images/decorride/5.png',
        'assets/projects_images/decorride/6.png',
        'assets/projects_images/decorride/8.png',
        'assets/projects_images/decorride/9.png',
        'assets/projects_images/decorride/10.png',
        'assets/projects_images/decorride/11.png',
      ],
      projectWebUrl:
          'https://www.linkedin.com/posts/njokom-alain-jr-bba607172_flutter-flutterdev-fluttercommunity-activity-7112008648943357952-nmuO?utm_source=share&utm_medium=member_desktop',
      displayImageUrl: "assets/projects_images/decorride/cover.png",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "Scriptlens",
      projectDescription:
          "Scriptlens combines mobile app development with Computer vision technologies to provide teachers with a platform to seamlessly and accurately grade MCQ scripts. It uses OpenCV and Tesseract OCR to extract text from images, and then uses a custom algorithm to grade the scripts based on the marking guide provided by the teachers. It also provides teachers with a platform to manage their classes, students and scripts.",
      techStackUsed: [
        "Flutter",
        "Firebese",
        "OpenCV",
      ],
      projectImagesUrl: [
        'assets/projects_images/scriptlens/cover.jpg',
        'assets/projects_images/scriptlens/1.jpg',
        'assets/projects_images/scriptlens/2.jpg',
        'assets/projects_images/scriptlens/3.jpg',
        'assets/projects_images/scriptlens/4.jpg',
      ],
      projectWebUrl: 'https://www.youtube.com/watch?v=sBwBHtZYBPA',
      displayImageUrl: "assets/projects_images/scriptlens/cover.jpg",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "Portfolio Web App",
      projectDescription:
          "Oh yes that's right. this portfolio website was built using flutter, so I guess i can add it to one of my portfolio projects as well, right? �. You can explore and provide me with suggestions",
      techStackUsed: [
        "Flutter",
        "Firebese",
      ],
      projectImagesUrl: [
        "assets/projects_images/portfolio_app/cover.png",
        'assets/projects_images/portfolio_app/1.png',
        'assets/projects_images/portfolio_app/2.png',
      ],
      projectWebUrl: '',
      displayImageUrl: "assets/projects_images/portfolio_app/cover.png",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "Kropco",
      projectDescription:
          "Kropco app encompasses machine learning and Google's tensorflow lite into a mobile app, to provide users with a platform to identify plant diseases and pests, and also to provide them with solutions to these diseases and pests. It also provides users with a platform to ask questions and get answers from other users and experts. With this app, users can also get the latest news and updates in the agricultural sector, as well as trending diseases around them and potential remedies",
      techStackUsed: [
        "Flutter",
        "Firebese",
        "Tensorflow lite",
        "Machine Learning",
        "Google Cloud",
        "Google maps",
      ],
      projectImagesUrl: [
        'assets/projects_images/kropco/cover.jpg',
        'assets/projects_images/kropco/1-min.jpg',
        'assets/projects_images/kropco/2-min.jpg',
        'assets/projects_images/kropco/3-min.jpg',
        'assets/projects_images/kropco/4-min.jpg',
        'assets/projects_images/kropco/5-min.jpg',
        'assets/projects_images/kropco/6-min.jpg',
      ],
      projectWebUrl: 'https://github.com/alainjr10/Kropco',
      displayImageUrl: "assets/projects_images/kropco/cover.jpg",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "Edutive",
      projectDescription:
          "Edutive is an educational platform that provides Cameroonian students with Past questions of the GCE exams. The app also offers them the possibility to purchase solutions and guides, which will help them verify their solutions and help them to be better prepared for the exams. Edutive also provides students with a platform to ask questions and get answers from other students and teachers.",
      techStackUsed: [
        "Flutter",
        "Firebese",
        "Cryptography",
      ],
      projectImagesUrl: ['assets/projects_images/edutive/cover.jpg'],
      projectWebUrl:
          'https://play.google.com/store/apps/details?id=com.edutive.edutive2',
      displayImageUrl: "assets/projects_images/edutive/cover.jpg",
      onTapped: () {},
    ),
    ProjectSpecs(
      projectTitle: "Edutive - Admin",
      projectDescription:
          "Edutive Admin app is used by the Edutive team to manage the Edutive platform. It provides the team with a platform to manage users, manage past questions, manage solutions and guides, manage questions and answers, manage payments and so much more.",
      techStackUsed: [
        "Flutter",
        "Firebese",
      ],
      projectImagesUrl: ['assets/projects_images/edutive/cover.jpg'],
      displayImageUrl: "assets/projects_images/edutive/cover.jpg",
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
      projectStatus: 'discontinued',
      projectWebUrl:
          'https://play.google.com/store/apps/details?id=com.mboutech.farmguard',
      displayImageUrl: "assets/projects_images/farmguard/cover.jpg",
      onTapped: () {},
    ),
  ];
}
