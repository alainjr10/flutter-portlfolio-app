import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dyce_portfolio/src/features/home/data/models/project_specs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../app/utils/constants.dart';

class ProjectDetailsScreen extends StatefulWidget {
  static const projectDetailsScreenId = "/project_details";
  const ProjectDetailsScreen(
      {super.key, required this.project, required this.projectName});
  final String projectName;
  final ProjectSpecs project;

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.project.projectTitle,
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
          // height: size.height * 0.8,
          child: Column(
            children: [
              Text(widget.project.projectTitle, style: kH3TextStyle),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(widget.project.projectDescription,
                    style: kH4TextStyle),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: size.height * 0.85,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 6),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: widget.project.projectImagesUrl.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                            image: Image.asset(i).image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.grey.withOpacity(0.1),
                              child: Image.asset(i, fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 20.0),
                      child: ElevatedButton.icon(
                        onPressed: widget.project.projectWebUrl.isEmpty
                            ? () {}
                            : () {
                                _launchInBrowser(
                                  Uri.parse(widget.project.projectWebUrl),
                                );
                              },
                        label: const Text("Go to Project"),
                        icon: const Icon(Icons.arrow_forward, size: 26.0),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          fixedSize: Size(size.width, 60.0),
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
