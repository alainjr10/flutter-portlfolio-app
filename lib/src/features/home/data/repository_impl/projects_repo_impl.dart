import 'package:dyce_portfolio/src/features/home/data/data_sources/projects_local_data_src.dart';
import 'package:dyce_portfolio/src/features/home/data/models/project_specs.dart';
import 'package:dyce_portfolio/src/features/home/data/models/skills_model.dart';
import 'package:dyce_portfolio/src/features/home/domain/repository/projects_repo.dart';

class ProjectsRepoImpl implements ProjectsRepo {
  ProjectsLocalDataSrc projectsLocalDataSrc = ProjectsLocalDataSrc();
  @override
  String getAboutMeText() {
    return projectsLocalDataSrc.aboutMeText();
  }

  @override
  List<SkillsModel> getSkills() {
    return projectsLocalDataSrc.returnSkills();
  }

  @override
  String briefDescription() {
    return projectsLocalDataSrc.briefDescription();
  }

  @override
  List<ProjectSpecs> getProjects() {
    return projectsLocalDataSrc.getProjects();
  }
}
