import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ProjectDetailsScreen extends StatefulWidget {
  static const projectDetailsScreenId = "/project_details";
  const ProjectDetailsScreen({super.key, required this.projectName});
  final String projectName;

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.projectName,
          style: kH3TextStyle.copyWith(fontSize: 30.0),
        ),
        backgroundColor: const Color(0xFF060706),
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.symmetric(
        //     horizontal: size.width * 0.15, vertical: size.width * 0.15),
        child: Container(
          margin: size.width > kMobileScreenSize
              ? EdgeInsets.symmetric(
                  horizontal: size.width / 10, vertical: 40.0)
              : EdgeInsets.symmetric(
                  horizontal: size.width / 30, vertical: 30.0),
          padding: size.width > kMobileScreenSize
              ? const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40.0)
              : const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            // color: Color.fromARGB(255, 9, 1, 17),
            color: Color(0xFF060706),
          ),
          height: size.height * 0.8,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
