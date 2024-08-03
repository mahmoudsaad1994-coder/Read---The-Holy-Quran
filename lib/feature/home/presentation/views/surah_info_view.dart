import 'package:flutter/material.dart';

import 'widgets/surah_info_view_body.dart';

class SurahInfoView extends StatelessWidget {
  const SurahInfoView({super.key, required this.surahName});
  final String surahName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SurahInfoViewBody(
        suraName: surahName,
      ),
    );
  }
}
