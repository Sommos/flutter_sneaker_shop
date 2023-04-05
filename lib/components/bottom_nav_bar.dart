import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const BottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey[800],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16.0,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home_outlined, 
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}