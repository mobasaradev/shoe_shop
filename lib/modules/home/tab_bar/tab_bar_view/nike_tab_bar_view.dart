import 'package:flutter/material.dart';
import 'package:shoe_shop/modules/home/tab_bar/tab_bar_view/widgets/header.dart';
import 'package:shoe_shop/modules/home/tab_bar/tab_bar_view/widgets/shoe_card.dart';
import 'package:shoe_shop/utils/asset_paths.dart';

import '../../../../theme/app_colors.dart';
import '../../../../theme/app_text_theme.dart';

class NikeTabBarView extends StatelessWidget {
  const NikeTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const HeaderBar(title: 'Popular Shoes'),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShoeCard(
              imageUrl: AssetPaths.nikeJordan,
              title: 'Nike Jordan',
              price: '\$493',
            ),
            ShoeCard(
              imageUrl: AssetPaths.nikeAirMax,
              title: 'Nike Air Max',
              price: '\$893.88',
            ),
          ],
        ),
        const SizedBox(height: 30),
        const HeaderBar(title: 'New Arrivals'),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 120,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BEST CHOICE',
                      style: AppTextTheme.common.bodySmall?.copyWith(
                        color: AppColors.tertiaryText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      'Nike Air Jordan',
                      style: AppTextTheme.common.bodyLarge?.copyWith(
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '\$849.69',
                      style: AppTextTheme.common.bodyMedium?.copyWith(
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset(
                  AssetPaths.nikeAir,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
