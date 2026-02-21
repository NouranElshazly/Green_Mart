import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomeTextForm extends StatelessWidget {
  const CustomeTextForm({
    super.key,
    required this.hinttext,
    required this.keyboardType,
    required this.validator,
    this.prefixIcon,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
  });
  final String hinttext;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final bool readOnly;
  final Function()? onTap;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      readOnly: readOnly,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(hintText: hinttext, prefixIcon: prefixIcon),
      validator: validator,
      onTap: onTap,
      onChanged: onChanged,
    );
  }
}
