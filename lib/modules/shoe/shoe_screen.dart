import 'package:flutter/material.dart';
import 'package:shoe_shop/modules/widgets/custom_screen_padding.dart';
import 'package:shoe_shop/utils/asset_paths.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_theme.dart';

class ShoeScreen extends StatefulWidget {
  const ShoeScreen({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
  });
  final String title;
  final String price;
  final String imageUrl;

  @override
  State<ShoeScreen> createState() => _ShoeScreenState();
}

class _ShoeScreenState extends State<ShoeScreen> {
  String selectedCountry = 'EU';
  final List<String> countriesName = [
    'EU',
    'US',
    'UK',
  ];
  int selectedSize = 40;
  final List<int> sizeList = [
    38,
    39,
    40,
    41,
    42,
    43,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPrimaryBg,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Mens\'s Shoes',
                    style: AppTextTheme.common.bodyMedium?.copyWith(
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 45,
                      height: 45,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.shopping_bag_outlined,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Image.asset(
                widget.imageUrl,
                fit: BoxFit.cover,
                height: 220,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: CustomScreenPadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BEST SELLER',
                      style: AppTextTheme.common.bodySmall?.copyWith(
                        color: AppColors.tertiaryText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      widget.title,
                      style: AppTextTheme.common.titleMedium?.copyWith(
                        color: AppColors.primaryText,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.price,
                      style: AppTextTheme.common.titleSmall?.copyWith(
                        color: AppColors.primaryText,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Air Jordan is a line of basketball shoes produced by Nike, Inc. Related apparel and accessories are marketed under Jordan Brand...',
                      style: AppTextTheme.common.bodySmall?.copyWith(
                        color: AppColors.secondaryText,
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Gallery',
                      style: AppTextTheme.common.bodyLarge?.copyWith(
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            AssetPaths.nikeJordan,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            AssetPaths.nikeJordan,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            AssetPaths.nikeJordan,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Size',
                          style: AppTextTheme.common.bodyLarge?.copyWith(
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: countriesName.map(
                            (label) {
                              final isSelected = selectedCountry == label;
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedCountry = label;
                                  });
                                },
                                child: Chip(
                                  label: Text(
                                    label,
                                    style: AppTextTheme.common.bodyMedium
                                        ?.copyWith(
                                      color: isSelected
                                          ? Colors.black
                                          : AppColors.secondaryText,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  side: BorderSide.none,
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: sizeList.map(
                        (size) {
                          final isSelected = selectedSize == size;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = size;
                              });
                            },
                            child: Chip(
                              label: Material(
                                elevation: isSelected ? 8.0 : 0.0,
                                borderRadius: BorderRadius.circular(40),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? AppColors.secondaryButton
                                        : AppColors.grey.shade100,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                    child: Text(
                                      size.toString(),
                                      style: AppTextTheme.common.bodyMedium
                                          ?.copyWith(
                                        color: isSelected
                                            ? AppColors.white
                                            : AppColors.secondaryText,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              side: BorderSide.none,
                              padding: const EdgeInsets.all(0),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: AppTextTheme.common.bodyMedium?.copyWith(
                                color: AppColors.secondaryText,
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              widget.price,
                              style: AppTextTheme.common.titleSmall?.copyWith(
                                color: AppColors.primaryText,
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 30,
                            ),
                            backgroundColor: AppColors.secondaryButton,
                            foregroundColor: AppColors.white,
                          ),
                          child: Text(
                            'Add To Cart',
                            style: AppTextTheme.common.bodyMedium?.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
