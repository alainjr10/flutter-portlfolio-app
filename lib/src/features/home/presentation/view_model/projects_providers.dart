import 'package:dyce_portfolio/src/features/home/data/repository_impl/projects_repo_impl.dart';
import 'package:dyce_portfolio/src/features/home/domain/repository/projects_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final projectsRepoProvider = Provider<ProjectsRepo>((ref) {
  return ProjectsRepoImpl();
});
