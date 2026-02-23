import 'package:flutter/material.dart';
import 'package:grenn_mart/core/constants/app_images.dart';
import 'package:grenn_mart/core/functions/navigation.dart%20';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/widgets/main_button.dart';
import 'package:grenn_mart/features/home/pages/home_screen.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image(image: AssetImage(AppImages.orderAccepted))),

              SizedBox(height: 40),
              Text(
                "Your Order has been accepted",
                style: TextStyles.title,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4),
              Text(
                "Your items has been placcd and is on  it’s way to being processed",
                style: TextStyles.caption1.copyWith(color: AppColors.grayColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              main_button(
                text: "Go To  Home ",
                onPressed: () {
                  push(context, HomeScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
