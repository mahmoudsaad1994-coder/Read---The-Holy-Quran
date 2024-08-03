import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:read_the_holy_quran/core/errors/failure.dart';

import 'package:read_the_holy_quran/feature/home/data/model/surah_model/surah_model.dart';

import '../../domain/repos/home_repo.dart';
import '../data_sources/local_data_source.dart';

/* 
  v1 >> with local json
 */
class HomeRepoImpl extends HomeRepo {
  final HomeLocaleDataSource homeLocalDataSource;

  HomeRepoImpl({required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<SurahModel>>> fetchQurenData() async {
    try {
      List<SurahModel> surah;
      surah = homeLocalDataSource.fetchQuranData();
      return right(surah);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
