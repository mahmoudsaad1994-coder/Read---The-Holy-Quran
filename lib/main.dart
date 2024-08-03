import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/utils/app_router.dart';
import 'core/utils/cach_helper.dart';
import 'core/utils/functions/setup_service_locator.dart';
import 'core/utils/simple_bloc_observer.dart';
import 'core/utils/theme.dart';
import 'feature/home/presentation/views/manager/app_cubit.dart';
import 'feature/home/presentation/views/manager/app_states.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver(); //to show cubit status
  await CacheHelper.init(); //sharedPreferences
  setupServiceLocator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    DevicePreview(builder: (context) => const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getOnlySurah(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) => MaterialApp.router(
          routerConfig: AppRouter.router,
          title: 'Read - The Holy Qur\'an',
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
