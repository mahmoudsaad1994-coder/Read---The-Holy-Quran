import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/utils/app_router.dart';
import 'core/utils/cach_helper.dart';
import 'core/utils/simple_bloc_observer.dart';
import 'core/utils/theme.dart';
import 'feature/layout_view.dart/presentation/views/manager/app_cubit.dart';
import 'feature/layout_view.dart/presentation/views/manager/app_states.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver(); //to show cubit status
  await CacheHelper.init(); //sharedPreferences
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    // DevicePreview(builder: (context) => const MainApp()),
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getJuzAyaCount(1),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) => MaterialApp.router(
          routerConfig: AppRouter.router,
          title: 'القران الكريم',
          debugShowCheckedModeBanner: false,
          theme: lightThemeData(context),
          darkTheme: darkThemeData(context),
          themeMode:
              AppCubit.get(context).isdark ? ThemeMode.dark : ThemeMode.light,
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const <Locale>[
            Locale('ar', 'EG'), // arabic
          ],
        ),
      ),
    );
  }
}
