import 'package:dyce_portfolio/app/utils/constants.dart';
import 'package:dyce_portfolio/src/features/home/data/models/skills_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
