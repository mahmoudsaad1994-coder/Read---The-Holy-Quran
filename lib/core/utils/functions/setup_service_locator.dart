import 'package:get_it/get_it.dart';

import '../../../feature/home/data/data_sources/local_data_source.dart';
import '../../../feature/home/data/repos/home_repo_imp.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );
}
