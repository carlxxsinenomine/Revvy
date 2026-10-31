import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:revvy/features/explore/presentation/screens/explore_screen.dart';
import 'package:revvy/features/home/presentation/screens/home_screen.dart';
import 'package:revvy/features/settings/presentation/screens/settings_screen.dart';
import 'package:revvy/shared/bottom_nav.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: HomeScreen.path,
    routes: [
      ShellRoute(
        routes: [
          GoRoute(
            path: HomeScreen.path,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: ExploreScreen.path,
            builder: (context, state) => const ExploreScreen(),
          ),
          GoRoute(
            path: SettingsScreen.path,
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
        builder: (context, state, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            extendBody: true,
            body: child,
            bottomNavigationBar: BottomNav(currentPath: state.uri.toString()),
          );
        },
      ),
    ],
  );
});
