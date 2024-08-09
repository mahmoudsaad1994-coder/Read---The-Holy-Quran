import 'package:flutter/material.dart';

import 'widgets/surah_view_body.dart';

class SurahView extends StatelessWidget {
  const SurahView({super.key});

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SurahViewBody(),
      ),
    );
  }
}
