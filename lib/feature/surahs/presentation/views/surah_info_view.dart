import 'package:flutter/material.dart';

import 'widgets/surah_info_view_body.dart';

class SurahInfoView extends StatelessWidget {
  const SurahInfoView({super.key, required this.surahNumber});
  final int surahNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SurahInfoViewBody(
        surahNumber: surahNumber,
      ),
    );
  }
}
