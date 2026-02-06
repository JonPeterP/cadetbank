import 'package:flutter/material.dart';
import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/assets.dart';
import 'package:cadetbank/core/navigation/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(Routes.init);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.valorantDarkest,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Replace with your logo asset
            Image.asset(
              Assets.logo,
              width: 120,
              height: 120,
            ),
            const SizedBox(height: 24),
            const Text(
              'VALOVAULT',
              style: TextStyle(
                color: AppColors.valorantRed,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Your Arsenal, Unlocked.',
              style: TextStyle(
                color: AppColors.valorantWhiteOff,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
