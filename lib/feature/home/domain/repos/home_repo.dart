import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../data/model/surah_model/surah_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<SurahModel>>> fetchQurenData();
}
