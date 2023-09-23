class ProjectSpecs {
  final String projectTitle;
  final String projectDescription;
  final List<String> techStackUsed;
  final String displayImageUrl;
  final Function() onTapped;
  List<String> projectImagesUrl;
  String projectStatus;
  String projectWebUrl;

  ProjectSpecs({
    required this.projectTitle,
    required this.projectDescription,
    required this.techStackUsed,
    required this.displayImageUrl,
    required this.onTapped,
    this.projectImagesUrl = const [],
    this.projectStatus = "inProgress",
    this.projectWebUrl = "",
  });
}
