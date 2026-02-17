import 'package:flutter/material.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/widgets/main_button.dart';
import 'package:pinput/pinput.dart';

class Verificationcodepage extends StatefulWidget {
  const Verificationcodepage({super.key});

  @override
  State<Verificationcodepage> createState() => _VerificationcodepageState();
}

class _VerificationcodepageState extends State<Verificationcodepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Enter Verification Code', style: TextStyles.title),
              SizedBox(height: 10),
              Text(
                'We have sent SMS to: 01XXXXXXXXXX',
                style: TextStyles.caption1.copyWith(color: Colors.grey),
                // textAlign: TextAlign.center,
              ),
              // Add your verification code input and related UI here
              SizedBox(height: 42),
              Pinput(
                length: 5,
                defaultPinTheme: PinTheme(
                  width: 70,
                  height: 70,
                  textStyle: TextStyles.subtitle.copyWith(fontSize: 20),
                  decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onCompleted: (pin) {
                  // Handle verification code completion
                },
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerRight,

                child: TextButton(
                  onPressed: () {},

                  child: Text(
                    'Change Phone Number ? ',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.grayColor,
                    ),
                  ),
                ),
              ),
              main_button(text: 'Confirm', onPressed: () {}),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.center,

                child: TextButton(
                  onPressed: () {},

                  child: Text(
                    'Resend confirmation code (1:23) ',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.grayColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
