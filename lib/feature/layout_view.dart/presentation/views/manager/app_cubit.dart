import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/quran.dart' as quran;

import '../../../../../core/utils/cach_helper.dart';
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

  //get surah and ayah from juz
  Map<int, String> surahTextOfJuz = {};
  getJuz({required int juzNumber}) {
    surahTextOfJuz = {};
    emit(FetchDataLoadingAppStates());
    String surahText;
    quran.getSurahAndVersesFromJuz(juzNumber).forEach(
      (key, value) {
        surahText = '';
        for (var i = value[0]; i <= value[1]; i++) {
          surahText = surahText + quran.getVerse(key, i, verseEndSymbol: true);
        }
        surahTextOfJuz.addAll({key: surahText});
      },
    );
    emit(FetchDataSuccessAppStates());
  }

  //font size slider
  double fontSize = CacheHelper.getData(key: "fontSize") ?? 30.0;
  changeFontSize(double size) {
    fontSize = size;
    CacheHelper.saveData(key: "fontSize", value: size).then((value) {
      emit(ChangeFontSizeAppStates());
    });
  }
}
