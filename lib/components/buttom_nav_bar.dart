import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtomNavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyButtomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey,
        activeColor: Colors.grey[900],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        onTabChange: (value)=> onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}

