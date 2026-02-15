import 'package:flutter/material.dart%20';
import 'package:grenn_mart/core/styles/text_style.dart';

class main_button extends StatelessWidget {
  const main_button({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text, style: TextStyles.body.copyWith(color: Colors.white)),
    );
  }
}
