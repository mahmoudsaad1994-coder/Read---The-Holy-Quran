import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../../data/model/surah_model/surah_model.dart';
import '../repos/home_repo.dart';

class FetchQuranData extends UseCase<List<SurahModel>, NoParam> {
  final HomeRepo homeRepo;

  FetchQuranData(this.homeRepo);

  @override
  Future<Either<Failure, List<SurahModel>>> call([NoParam? param]) async {
    return await homeRepo.fetchQurenData();
  }
}
