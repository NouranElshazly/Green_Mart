import 'package:flutter/material.dart%20';
import 'package:grenn_mart/core/styles/text_style.dart';

class main_button extends StatelessWidget {
  const main_button({super.key, required this.text, this.onPressed});
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyles.body.copyWith(color: Colors.white)),
    );
  }
}
