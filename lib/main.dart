import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:listview_cubit_hooks/core/app_router.gr.dart';
import 'package:listview_cubit_hooks/data/books/database/app_db.dart';
import 'package:listview_cubit_hooks/di/get_config.dart';
import 'package:listview_cubit_hooks/generated/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  configureDependencies();
  getIt.registerSingleton<AppRouter>(AppRouter());

  await AppDatabase().initialize();

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('en')],
      child: MyApp(appRouter: getIt<AppRouter>()),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({required this.appRouter, Key? key}) : super(key: key);

  final AppRouter appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: widget.appRouter.delegate(),
      routeInformationParser: widget.appRouter.defaultRouteParser(),
      title: LocaleKeys.app_title.tr(),
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.yellow),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
