import 'package:flutter/material.dart ';
import 'package:flutter_svg/svg.dart';
import 'package:grenn_mart/core/constants/app_images.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/widgets/main_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            // Background image or decoration
            Image.asset(
              AppImages.welcome,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),

            Positioned(
              bottom: 70,
              right: 20,
              left: 20,
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppImages.carrotSvg,
                    colorFilter: ColorFilter.mode(
                      AppColors.backgroundColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(height: 35),
                  Text(
                    "Welcome\nto GreenMart",
                    textAlign: TextAlign.center,
                    style: TextStyles.headline.copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Your one-stop shop for fresh produce",

                    style: TextStyles.caption1.copyWith(
                      color: AppColors.backgroundColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  main_button(text: "Get Started"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
