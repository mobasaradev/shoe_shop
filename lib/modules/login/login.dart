import 'package:flutter/material.dart';
import 'package:shoe_shop/modules/widgets/custom_screen_padding.dart';
import 'package:shoe_shop/theme/app_colors.dart';
import 'package:shoe_shop/theme/app_text_theme.dart';
import 'package:shoe_shop/utils/asset_paths.dart';

import '../widgets/curved_paint.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(
          size: const Size(double.infinity, double.infinity),
          painter: CurvedPainter(),
          child: CustomScreenPadding(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.loginTop),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login Details',
                      style: AppTextTheme.common.titleMedium,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter email !';
                            } else if (!value.contains("@")) {
                              return "Please enter valid email !";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: 'Username, email & phone number',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length <= 6) {
                              return 'Please enter valid Password';
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Processing Data'),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Center(
                                      child: Text('Please enter valid input'),
                                    ),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryButton,
                              foregroundColor: AppColors.whiteText,
                              padding: const EdgeInsets.symmetric(vertical: 7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Submit',
                              style: AppTextTheme.common.bodyLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 5,
                        width: 110,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColors.primaryButton,
                              AppColors.white,
                            ],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                          ),
                        ),
                      ),
                      const Text(
                        'Or sign up with',
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        height: 5,
                        width: 110,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColors.primaryButton,
                              AppColors.white,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildImageButton(
                        AppColors.grey,
                        AssetPaths.googleIcon,
                      ),
                      const SizedBox(width: 10),
                      _buildImageButton(
                        AppColors.grey,
                        AssetPaths.facebookIcon,
                      ),
                      const SizedBox(width: 10),
                      _buildImageButton(
                        AppColors.grey,
                        AssetPaths.appleIcon,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildImageButton(Color backgroundColor, String imageUrl) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 45,
        height: 45,
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Image.asset(imageUrl),
        ),
      ),
    );
  }
}
