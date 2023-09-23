import 'package:dyce_portfolio/src/features/home/data/models/project_specs.dart';
import 'package:dyce_portfolio/src/features/home/data/models/skills_model.dart';

abstract class ProjectsRepo {
  List<SkillsModel> getSkills();
  String getAboutMeText();
  String briefDescription();
  List<ProjectSpecs> getProjects();
}
