import 'package:flutter/material.dart';
import 'package:shoe_shop/modules/shoe/shoe_screen.dart';
import 'package:shoe_shop/modules/widgets/custom_scaffold_msg.dart';

import '../../../../../theme/app_colors.dart';
import '../../../../../theme/app_text_theme.dart';

class ShoeCard extends StatelessWidget {
  const ShoeCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
  });
  final String imageUrl;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShoeScreen(
                imageUrl: imageUrl,
                title: title,
                price: price,
              ),
            ),
          ),
          child: Container(
            width: 180,
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 16,
              left: 10,
              right: 3,
            ),
            decoration: BoxDecoration(
              color: AppColors.white, // Background color
              borderRadius: BorderRadius.circular(16), // Border radius
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Image.asset(
                  imageUrl,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 15),
                Text(
                  'BEST SELLER',
                  style: AppTextTheme.common.bodySmall?.copyWith(
                    color: AppColors.tertiaryText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  title,
                  style: AppTextTheme.common.bodyLarge?.copyWith(
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  price,
                  style: AppTextTheme.common.bodyMedium?.copyWith(
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: () {
              scaffoldMsg(
                context,
                'Clicked on add to cart button',
                AppColors.secondaryButton,
              );
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: AppColors.secondaryButton,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
              child: const Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
