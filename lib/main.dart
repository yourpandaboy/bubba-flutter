import 'package:bubba/features/location/presentation/pages/homepage.dart';
import 'package:bubba/features/location/presentation/pages/mappage.dart';
import 'package:bubba/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.read(appRouterProvider);
    return MaterialApp(
      title: 'Bubba',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromRGBO(125, 176, 205, 1),
          background: const Color.fromRGBO(238, 236, 241, 1),
          // or from RGB
        ),
      ),
      home: const HomePage(),
      onGenerateRoute: appRouter.getRoute,
      navigatorObservers: [
        appRouter.routeObserver,
      ],
      navigatorKey: NavigationService.navigatorKey,
    );
  }
}
