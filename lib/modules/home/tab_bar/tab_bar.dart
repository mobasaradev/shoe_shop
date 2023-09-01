import 'package:flutter/material.dart';
import 'package:shoe_shop/modules/home/tab_bar/tab_bar_view/nike_tab_bar_view.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_text_theme.dart';
import '../../../utils/asset_paths.dart';

class CustomTabBarView extends StatefulWidget {
  const CustomTabBarView({super.key});

  @override
  State<CustomTabBarView> createState() => _CustomTabBarViewState();
}

class _CustomTabBarViewState extends State<CustomTabBarView> {
  String selectedItem = 'Nike';
  String selectedLogo = AssetPaths.appleIcon;

  final Map<String, String> brandName = {
    'Nike': AssetPaths.nikeLogo,
    'Puma': AssetPaths.pumaLogo,
    'Armour': AssetPaths.armourLogo,
    'Adidas': AssetPaths.adidasLogo,
    'Converse': AssetPaths.converseLogo,
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: brandName.entries.map((entry) {
              final label = entry.key;
              final logo = entry.value;
              final isSelected = selectedItem == label;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedItem = label;
                    selectedLogo = logo;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Row(
                    children: [
                      !isSelected
                          ? Container(
                              width: 42,
                              height: 42,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(42),
                              ),
                              child: Image.asset(logo),
                            )
                          : Chip(
                              avatar: Container(
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Image.asset(logo),
                              ),
                              label: Text(
                                label,
                                style: AppTextTheme.common.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whiteText,
                                ),
                              ),
                              backgroundColor: AppColors.secondaryButton,
                              side: const BorderSide(
                                color: AppColors.transparent,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: const EdgeInsets.all(3),
                            ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        _buildSelectedContent(),
      ],
    );
  }

  Widget _buildSelectedContent() {
    switch (selectedItem) {
      case 'Nike':
        return const NikeTabBarView();
      case 'Puma':
        return const Center(
          heightFactor: 19,
          child: Text(
            'Puma',
            style: TextStyle(color: AppColors.black),
          ),
        );
      case 'Armour':
        return const Center(
          heightFactor: 19,
          child: Text(
            'Armour',
            style: TextStyle(color: AppColors.black),
          ),
        );
      case 'Adidas':
        return const Center(
          heightFactor: 19,
          child: Text(
            'Adidas',
            style: TextStyle(color: AppColors.black),
          ),
        );
      case 'Converse':
        return const Center(
          heightFactor: 19,
          child: Text(
            'Converse',
            style: TextStyle(color: AppColors.black),
          ),
        );
      default:
        return Container(); // Default case, or handle differently
    }
  }
}
