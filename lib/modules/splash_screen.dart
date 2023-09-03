import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe_shop/modules/login/login.dart';
import 'package:shoe_shop/modules/main/main_screen.dart';
import 'package:shoe_shop/theme/app_colors.dart';
import 'package:shoe_shop/theme/app_text_theme.dart';

import '../utils/asset_paths.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String keyLogin = 'login';
  goNextPage() async {
    SharedPreferences sPref = await SharedPreferences.getInstance();
    final isLogin = sPref.getBool(keyLogin);
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (isLogin != null) {
          if (isLogin) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const MainScreen(),
              ),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          }
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        }
      },
    );
  }

  @override
  void initState() {
    goNextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetPaths.splash),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            'OXY BOOTS',
            style: AppTextTheme.common.bodyLarge?.copyWith(
              fontSize: 32,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
