import '../../../../constans.dart';
import '../../../../core/utils/api_service.dart';
import '../../../../core/utils/functions/save_surah_in_hive.dart';
import '../model/surah_model/surah_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<SurahModel>> fetchQuranData();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<SurahModel>> fetchQuranData() async {
    var data = await ApiService.getQuranData();
    List<SurahModel> surah = getSurahList(data);
    saveSurahsData(surah, kSurahBox);
    return surah;
  }

  List<SurahModel> getSurahList(Map<String, dynamic> data) {
    List<SurahModel> surah = [];
    for (var bookMap in data['surahs']) {
      surah.add(SurahModel.fromJson(bookMap));
    }
    return surah;
  }
}
