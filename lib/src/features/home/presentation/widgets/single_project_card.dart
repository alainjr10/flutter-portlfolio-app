// import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../../app/utils/constants.dart';

class SingleProjectCard extends StatefulWidget {
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
  State<SingleProjectCard> createState() => _SingleProjectCardState();
}

class _SingleProjectCardState extends State<SingleProjectCard> {
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
      margin: EdgeInsets.symmetric(
          horizontal: widget.size.width / 10, vertical: 20.0),
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
                      Text(widget.projectTitle, style: kH3TextStyle),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              projectListToString(),
                              style: kH5TextStyle,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                        // children: techStackUsed.map((e) {
                        //   return Text("$e,", style: kH5TextStyle);
                        // }).toList(),
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
                        widget.projectDescription,
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
                    onPressed: widget.onTapped,
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
                  image: AssetImage(widget.displayImageUrl),
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

class SingleProjectCardMobile extends StatefulWidget {
  const SingleProjectCardMobile({
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
  State<SingleProjectCardMobile> createState() =>
      _SingleProjectCardMobileState();
}

class _SingleProjectCardMobileState extends State<SingleProjectCardMobile> {
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
    Size size = widget.size;
    return Container(
      margin: size.width < kSmallerMobileScreenSize
          ? const EdgeInsets.all(0)
          : EdgeInsets.symmetric(
              horizontal: widget.size.width / 12, vertical: 16.0),
      padding: size.width < kSmallerMobileScreenSize
          ? const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0)
          : const EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.projectTitle,
              style: size.width < kSmallerMobileScreenSize
                  ? kH3TextStyle.copyWith(fontSize: 24.0)
                  : kH3TextStyle),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Flexible(
                child: Text(
                  projectListToString(),
                  style: kH5TextStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Container(
            height: 240.0,
            // margin: const EdgeInsets.only(
            //     top: 55.0, bottom: 55.0, right: 70.0, left: 40.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
              image: DecorationImage(
                image: AssetImage(widget.displayImageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            widget.projectDescription,
            style: kH4TextStyle,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
            child: ElevatedButton.icon(
              onPressed: widget.onTapped,
              label: const Text("See Project"),
              icon: const Icon(Icons.arrow_forward, size: 26.0),
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
      // child: Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Flexible(
      //       flex: 2,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.symmetric(
      //                 vertical: 65.0, horizontal: 25.0),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(widget.projectTitle, style: kH3TextStyle),
      //                 const SizedBox(
      //                   height: 10.0,
      //                 ),
      //                 Row(
      //                   children: [
      //                     Flexible(
      //                       child: Text(
      //                         projectListToString(),
      //                         style: kH5TextStyle,
      //                         maxLines: 2,
      //                         overflow: TextOverflow.ellipsis,
      //                       ),
      //                     ),
      //                   ],
      //                   // children: techStackUsed.map((e) {
      //                   //   return Text("$e,", style: kH5TextStyle);
      //                   // }).toList(),
      //                 ),
      //                 // Text("Flutter, Firebase, Laravel", style: kH5TextStyle),
      //                 const SizedBox(
      //                   height: 10.0,
      //                 ),
      //                 // Text(
      //                 //   "Yo dyce man. my other name is jaburata, but sometimes, i behave like kakaraka",
      //                 //   style: kH4TextStyle,
      //                 // ),
      //                 Text(
      //                   widget.projectDescription,
      //                   style: kH4TextStyle,
      //                   maxLines: 5,
      //                   overflow: TextOverflow.ellipsis,
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 25.0),
      //             child: ElevatedButton.icon(
      //               onPressed: widget.onTapped,
      //               label: const Text("See Project"),
      //               icon: const Icon(Icons.arrow_forward, size: 32.0),
      //               style: ElevatedButton.styleFrom(
      //                 backgroundColor: Colors.white.withOpacity(0.2),
      //                 shape: const RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(20.0),
      //                   ),
      //                 ),
      //                 padding: const EdgeInsets.symmetric(
      //                     vertical: 12.0, horizontal: 20.0),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Flexible(
      //       flex: 3,
      //       child: Container(
      //         height: 300.0,
      //         margin: const EdgeInsets.only(
      //             top: 55.0, bottom: 55.0, right: 70.0, left: 40.0),
      //         decoration: BoxDecoration(
      //           borderRadius: const BorderRadius.all(
      //             Radius.circular(30.0),
      //           ),
      //           image: DecorationImage(
      //             image: AssetImage(widget.displayImageUrl),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
