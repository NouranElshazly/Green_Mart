import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomeTextForm extends StatelessWidget {
  const CustomeTextForm({
    super.key,
    required this.hinttext,
    required this.keyboardType,
    required this.validator,
  });
  final String hinttext;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(hintText: hinttext),
      validator: validator,
    );
  }
}
