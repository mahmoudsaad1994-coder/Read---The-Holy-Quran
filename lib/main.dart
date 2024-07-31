import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/utils/app_router.dart';

void main() {
  runApp(
    DevicePreview(builder: (context) => const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Read - The Holy Qur\'an',
      debugShowCheckedModeBanner: false,
    );
  }
}
