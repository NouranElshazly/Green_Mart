import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grenn_mart/core/constants/app_images.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/features/intro/welcome_screen.dart';
import 'package:grenn_mart/core/functions/navigation.dart ';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // delay 3 second before navigate to welcome  screen
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      // navigate to welcome screen
      pushReplace(context, const WelcomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(child: SvgPicture.asset(AppImages.logoSvg)),
    );
  }
}
