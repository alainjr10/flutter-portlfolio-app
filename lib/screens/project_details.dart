import 'package:carousel_slider/carousel_slider.dart';
import 'package:dyce_portfolio/models/project_specs.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ProjectDetailsScreen extends StatefulWidget {
  static const projectDetailsScreenId = "/project_details";
  const ProjectDetailsScreen({super.key, required this.project});
  final ProjectSpecs project;

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
              CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: widget.project.projectImagesUrl.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                                image: Image.asset("$i").image,
                                fit: BoxFit.cover)),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Container(
                height: 300.0,
                margin: const EdgeInsets.only(
                    top: 55.0, bottom: 55.0, right: 70.0, left: 40.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(widget.project.displayImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
