import 'package:dyce_portfolio/src/features/home/data/models/skills_model.dart';

abstract class ProjectsRepo {
  List<SkillsModel> getSkills();
  String getAboutMeText();
}
