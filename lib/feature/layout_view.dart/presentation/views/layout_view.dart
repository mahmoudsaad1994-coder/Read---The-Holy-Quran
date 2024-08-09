import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../surahs/presentation/views/surah_view.dart';
import '../../../juz/presentation/views/juz_view.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: appBar(
            context: context,
            isHome: true,
            title: 'الُِقٌرٍآن الُِڪرٍيم',
          ),
          body: const DoubleBackToCloseApp(
            snackBar: SnackBar(
              content: Text('اضغط مره اخري للخروج من التطبيق'),
            ),
            child: TabBarView(
              children: [
                SurahView(),
                JuzView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
