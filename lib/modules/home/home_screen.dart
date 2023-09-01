import 'package:flutter/material.dart';
import 'package:shoe_shop/modules/home/tab_bar/tab_bar.dart';
import 'package:shoe_shop/modules/widgets/custom_appbar.dart';
import 'package:shoe_shop/modules/widgets/custom_screen_padding.dart';

import '../../theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPrimaryBg,
      body: CustomScreenPadding(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const CustomAppBar(
                icon: Icons.view_module_rounded,
                title: 'Mondolibug, Sylhet',
              ),
              const SizedBox(height: 30),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Looking for shoes',
                    hintStyle: TextStyle(
                      color: AppColors.secondaryText.withOpacity(0.7),
                    ),
                    contentPadding: const EdgeInsets.only(top: 10),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.secondaryText.withOpacity(0.7),
                    ),
                    fillColor: AppColors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const CustomTabBarView(),
            ],
          ),
        ),
      ),
    );
  }
}
