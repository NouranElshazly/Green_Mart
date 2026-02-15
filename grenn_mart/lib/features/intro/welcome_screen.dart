import 'package:flutter/material.dart ';
import 'package:flutter_svg/svg.dart';
import 'package:grenn_mart/core/constants/app_images.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/styles/text_style.dart';

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
              right: 0,
              left: 0,
              child: Column(
                children: [
                  SvgPicture.asset(AppImages.carrotSvg),
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
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Get Started",
                      style: TextStyles.body.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
