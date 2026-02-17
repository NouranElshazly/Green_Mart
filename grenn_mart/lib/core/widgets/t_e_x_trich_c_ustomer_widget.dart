import 'package:flutter/material.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';

class TEXTrichCUstomerWidget extends StatelessWidget {
  const TEXTrichCUstomerWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.onpress,
  });
  final String text1;
  final String text2;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            text: text1,
            style: TextStyles.caption1,
            children: [
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: TextButton(
                  onPressed: onpress,
                  child: Text(
                    text2,
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                // Add gesture recognizer for sign-up action
              ),
            ],
          ),
        ),
      ],
    );
  }
}
