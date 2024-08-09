import 'package:flutter/material.dart';

import 'widgets/juz_info_view_body.dart';

class JuzInfoView extends StatelessWidget {
  const JuzInfoView({super.key, required this.juzNumber});
  final int juzNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: JuzInfoViewBody(
        juzNumber: juzNumber,
      ),
    );
  }
}
