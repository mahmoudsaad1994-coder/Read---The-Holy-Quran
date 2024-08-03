import 'package:hive/hive.dart';

import '../../../feature/home/data/model/surah_model/surah_model.dart';

void saveSurahsData(List<SurahModel> surah, String boxName) {
  var box = Hive.box<SurahModel>(boxName);
  box.addAll(surah);
}
