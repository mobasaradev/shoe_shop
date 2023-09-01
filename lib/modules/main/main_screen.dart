import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shoe_shop/modules/profile/profile_screen.dart';

import '../../theme/app_colors.dart';
import '../home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final items = const [
    Icon(Icons.shopping_bag_outlined, size: 30),
    Icon(Icons.favorite_outline, size: 30),
    Icon(Icons.home_outlined, size: 30),
    Icon(Icons.notifications_none, size: 30),
    Icon(Icons.person_outline, size: 30)
  ];

  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPrimaryBg,
      body: getSelectedWidget(index: index),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex) {
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
        backgroundColor: AppColors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const Center(
          child: Text('Cart Screen'),
        );
        break;
      case 1:
        widget = const Center(
          child: Text('Favorite Screen'),
        );
        break;
      case 2:
        widget = const HomeScreen();
        break;
      case 3:
        widget = const Center(
          child: Text('Notification Screen'),
        );
        break;
      case 4:
        widget = const ProfileScreen();
        break;
      default:
        widget = const HomeScreen();
        break;
    }
    return widget;
  }
}
