import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:revvy/features/explore/presentation/screens/explore_screen.dart';
import 'package:revvy/features/home/presentation/screens/home_screen.dart';
import 'package:revvy/features/settings/presentation/screens/settings_screen.dart';
import 'package:revvy/shared/widgets/nav_button.dart';

class BottomNav extends StatelessWidget {
  final String? currentPath;
  const BottomNav({super.key, this.currentPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavButton(
            icon: (currentPath == HomeScreen.path)
                ? Icons.home_filled
                : Icons.home_outlined,
            label: "Home",
            onPress: () => GoRouter.of(context).go(HomeScreen.path),
          ),
          NavButton(
            icon: (currentPath == ExploreScreen.path)
                ? Icons.explore_off_outlined
                : Icons.explore_outlined,
            label: "Explore",
            onPress: () => GoRouter.of(context).go(ExploreScreen.path),
          ),
          NavButton(
            icon: (currentPath == SettingsScreen.path)
                ? Icons.person_off_outlined
                : Icons.person_outline,
            label: "Me",
            onPress: () => GoRouter.of(context).go(SettingsScreen.path),
          ),
        ],
      ),
    );
  }
}
