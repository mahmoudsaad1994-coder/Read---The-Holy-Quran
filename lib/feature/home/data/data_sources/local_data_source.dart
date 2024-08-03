import 'package:hive/hive.dart';
import 'package:read_the_holy_quran/constans.dart';

import '../model/surah_model/surah_model.dart';

abstract class HomeLocaleDataSource {
  List<SurahModel> fetchQuranData();
}

class HomeLocalDataSourceImpl extends HomeLocaleDataSource {
  @override
  List<SurahModel> fetchQuranData() {
    var box = Hive.box<SurahModel>(kSurahBox);
    return box.values.toList();
  }
}
