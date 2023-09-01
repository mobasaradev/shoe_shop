import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../widgets/custom_screen_padding.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightPrimaryBg,
      body: CustomScreenPadding(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
