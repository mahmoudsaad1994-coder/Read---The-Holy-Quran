import 'dart:collection';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/cach_helper.dart';
import '../../../data/model/ayah_model/ayah_model.dart';
import '../../../data/model/surah_model/surah_model.dart';
import 'app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppStatesInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  //app mode
  bool isdark = CacheHelper.getData(key: "isdark") ?? false;

  void changeAppMode() {
    isdark = !isdark;
    CacheHelper.saveData(key: "isdark", value: isdark).then((value) {
      emit(ChangeThemeModeAppStates());
    });
  }

  List<SurahModel> surahList = [];
  Future<void> getOnlySurah() async {
    emit(FetchDataLoadingAppStates());
    final String response =
        await rootBundle.loadString(AssetsData.surahDataPath);
    final data = await json.decode(response);
    for (var item in data['data']) {
      surahList.add(SurahModel.fromJson(item));
    }

    emit(FetchDataSuccessAppStates());
  }

  List<AyahModel> ayahList = [];
  Future<void> getSurahAyahs(int surahNumber) async {
    ayahList = [];
    emit(FetchAyahDataLoadingAppStates());
    final String response =
        await rootBundle.loadString(AssetsData.allQuranDataPath);
    final data = await json.decode(response);
    for (var item in data['data']['surahs'][surahNumber - 1]['ayahs']) {
      ayahList.add(AyahModel.fromJson(item));
    }
    emit(FetchAyahDataSuccessAppStates());
  }

  String listToString(List<String> list) =>
      IterableBase.iterableToFullString(list, '', '');
}
