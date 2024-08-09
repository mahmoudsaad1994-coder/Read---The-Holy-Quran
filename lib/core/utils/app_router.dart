import 'package:go_router/go_router.dart';

import '../../feature/surahs/presentation/views/surah_info_view.dart';
import '../../feature/juz/presentation/views/juz_info_view.dart';
import '../../feature/layout_view.dart/presentation/views/layout_view.dart';
import '../../feature/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const kLayoutView = '/LayoutView';
  static const kSurahInfoView = '/surahView';
  static const kjuzInfoView = '/juzView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLayoutView,
        builder: (context, state) => const LayoutView(),
      ),
      GoRoute(
        path: kSurahInfoView,
        builder: (context, state) => SurahInfoView(
          surahNumber: state.extra as int,
        ),
      ),
      GoRoute(
        path: kjuzInfoView,
        builder: (context, state) => JuzInfoView(
          juzNumber: state.extra as int,
        ),
      ),
    ],
  );
}
