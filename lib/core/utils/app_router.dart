import 'package:go_router/go_router.dart';

import '../../feature/home/presentation/views/home_view.dart';
import '../../feature/home/presentation/views/surah_info_view.dart';
import '../../feature/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSurahInfoView = '/surahView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSurahInfoView,
        builder: (context, state) => SurahInfoView(
          surahName: state.extra as String,
        ),
      ),
    ],
  );
}
