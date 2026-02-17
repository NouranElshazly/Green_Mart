import 'package:flutter/material.dart';
import 'package:grenn_mart/core/functions/validation.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/widgets/custome_text_form.dart';
import 'package:grenn_mart/core/widgets/main_button.dart';
import 'package:grenn_mart/core/functions/navigation.dart';
import 'package:grenn_mart/features/auth/pages/verificationcodepage.dart';

class MobileNumberPage extends StatefulWidget {
  const MobileNumberPage({super.key});

  @override
  State<MobileNumberPage> createState() => _MobileNumberPageState();
}

class _MobileNumberPageState extends State<MobileNumberPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter Your Mobile Number', style: TextStyles.title),
                // Add your mobile number input and related UI here
                SizedBox(height: 10),
                Text(
                  'We need to verify you. We will send you a one time verification code. ',
                  style: TextStyles.caption1.copyWith(color: Colors.grey),
                ),
                SizedBox(height: 42),
                CustomeTextForm(
                  hinttext: "01xxxxxxxxxx",
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (!isEgyptionPhone(value!)) {
                      return 'Please enter your mobile number';
                    }

                    return null;
                  },
                ),
                SizedBox(height: 46),
                main_button(
                  text: 'Next ',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // If the form is valid, navigate to the next page
                      push(context, Verificationcodepage());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
