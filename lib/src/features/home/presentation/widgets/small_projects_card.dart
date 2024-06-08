// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../app/utils/constants.dart';

class SmallerProjectsCard extends StatefulWidget {
  const SmallerProjectsCard({
    super.key,
    required this.textTheme,
    required this.projectTitle,
    required this.projectDescription,
    required this.techStackUsed,
    required this.displayImageUrl,
    required this.onTapped,
  });

  final TextTheme textTheme;
  final String projectTitle;
  final String projectDescription;
  final List<String> techStackUsed;
  final String displayImageUrl;
  final Function() onTapped;

  @override
  State<SmallerProjectsCard> createState() => _SmallerProjectsCardState();
}

class _SmallerProjectsCardState extends State<SmallerProjectsCard> {
  String projectListToString() {
    String techStack = "";
    for (int i = 0; i < widget.techStackUsed.length; i++) {
      techStack += widget.techStackUsed[i];
      if (i != widget.techStackUsed.length - 1) {
        techStack += ", ";
      }
    }
    return techStack;
  }

  @override
  void initState() {
    super.initState();
    projectListToString();
    // log(projectListToString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 230.0,
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
            widget.projectTitle,
            style: GoogleFonts.roboto(
              textStyle: kH3TextStyle,
            ),
          ),
          Text(
            projectListToString(),
            style: kH5TextStyle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          // Row(
          //   children: widget.techStackUsed.map((e) {
          //     return Text("$e,", style: kH5TextStyle);
          //   }).toList(),
          // ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            widget.projectDescription,
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
            onPressed: widget.onTapped,
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
              // maximumSize: const Size(140.0, 40.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            ),
            child: const Row(
              children: [
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
