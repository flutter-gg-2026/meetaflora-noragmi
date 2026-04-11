import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'core/setup.dart';
import 'core/di/configure_dependencies.dart';
import 'core/navigation/app_router.dart';

Future<void> main() async {
  // Make sure Flutter is ready
  WidgetsFlutterBinding.ensureInitialized();

  // Load .env file
  await setup();

  // Register all dependencies in GetIt
  await configureDependencies();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp.router(
          // Use GoRouter for navigation
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
