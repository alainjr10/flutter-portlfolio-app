import 'package:dyce_portfolio/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            margin: size.width < kSmallerMobileScreenSize
                ? const EdgeInsets.symmetric(horizontal: 0, vertical: 20.0)
                : size.width < kMobileScreenSize
                    ? EdgeInsets.symmetric(
                        horizontal: size.width / 30, vertical: 12.0)
                    : EdgeInsets.symmetric(
                        horizontal: size.width / 10, vertical: 20.0),
            padding: size.width < kSmallerMobileScreenSize
                ? const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0)
                : size.width < kMobileScreenSize
                    ? const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0)
                    : const EdgeInsets.symmetric(
                        vertical: 25.0, horizontal: 40.0),
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
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
