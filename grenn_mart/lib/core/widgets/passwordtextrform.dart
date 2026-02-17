import 'package:flutter/material.dart';

class Passwordtextform extends StatefulWidget {
  const Passwordtextform({
    super.key,
    required this.hinttext,
    required this.validator,
  });
  final String hinttext;
  final String? Function(String?)? validator;
  @override
  State<Passwordtextform> createState() => _PasswordtextformState();
}

class _PasswordtextformState extends State<Passwordtextform> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: widget.hinttext,
        suffixIcon: IconButton(
          // icon: const Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });

            // Handle visibility toggle
          },
          icon: obscureText
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
      ),
      validator: widget.validator,
    );
  }
}
