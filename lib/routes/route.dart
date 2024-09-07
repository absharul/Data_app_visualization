import 'package:data_app/screens/awass.dart';
import 'package:go_router/go_router.dart';

import '../screens/chart_screen.dart';
import '../screens/home_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/chart',
      builder: (context, state) => const ChartScreen(),
    ),
    GoRoute(
      path: '/awass',
      builder: (context, state) => const AwassScreen(),
    ),
  ],
);
