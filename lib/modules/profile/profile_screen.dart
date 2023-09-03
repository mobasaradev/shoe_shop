import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe_shop/modules/home/home_screen.dart';
import 'package:shoe_shop/modules/login/login.dart';
import 'package:shoe_shop/modules/profile/widgets/custom_list_tile.dart';
import 'package:shoe_shop/theme/app_text_theme.dart';
import 'package:shoe_shop/utils/asset_paths.dart';

import '../../theme/app_colors.dart';
import '../widgets/custom_screen_padding.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPrimaryBg,
      body: CustomScreenPadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const CircleAvatar(
                backgroundImage: AssetImage(AssetPaths.profile),
                radius: 40,
              ),
              const SizedBox(height: 20),
              Text(
                'Hey 👋🏻',
                style: AppTextTheme.common.titleSmall?.copyWith(
                  color: AppColors.secondaryText,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Alisson Becker',
                style: AppTextTheme.common.titleLarge?.copyWith(
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 20),
              const CustomListTile(
                icon: Icons.person_outline,
                title: 'Profile',
              ),
              CustomListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
                icon: Icons.home_outlined,
                title: 'Home Page',
              ),
              const CustomListTile(
                icon: Icons.shopping_bag_outlined,
                title: 'My Cart',
              ),
              const CustomListTile(
                icon: Icons.favorite_border,
                title: 'Favorite',
              ),
              const CustomListTile(
                icon: Icons.delivery_dining_outlined,
                title: 'Orders',
              ),
              const CustomListTile(
                icon: Icons.notifications_active,
                title: 'Notifications',
              ),
              const Divider(
                thickness: 1,
                color: AppColors.secondaryText,
                endIndent: 200,
                height: 60,
              ),
              CustomListTile(
                onTap: () async {
                  SharedPreferences sharedPre =
                      await SharedPreferences.getInstance();
                  sharedPre.clear();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                icon: Icons.logout,
                title: 'Sign Out',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
