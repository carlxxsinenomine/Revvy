import 'package:flutter/material.dart';
import 'package:revvy/shared/widgets/nav_button.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavButton(icon: Icons.home_outlined, label: "Home"),
          NavButton(icon: Icons.explore_outlined, label: "Explore"),
          NavButton(icon: Icons.person_outline, label: "Me")
        ],
      ),
    );
  }
}
