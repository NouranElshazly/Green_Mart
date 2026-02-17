import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grenn_mart/core/functions/navigation.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/widgets/custome_text_form.dart';
import 'package:grenn_mart/core/widgets/main_button.dart';
import 'package:grenn_mart/core/widgets/passwordtextrform.dart';
import 'package:grenn_mart/core/widgets/t_e_x_trich_c_ustomer_widget.dart';
import 'package:grenn_mart/features/auth/pages/login_page.dart';
import 'package:grenn_mart/core/functions/validation.dart';
import 'package:grenn_mart/features/auth/pages/mobile_number_page.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formkey,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SvgPicture.asset('assets/images/carrot.svg')],
                  ),
                  SizedBox(height: 45.39),
                  Text('Sign Up  ', style: TextStyles.subtitle),
                  SizedBox(height: 12.39),
                  Text(
                    'Enter your credentials to continue',
                    style: TextStyles.caption1.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 44.88),
                  Text(
                    'Name',
                    style: TextStyles.caption1.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 7),
                  CustomeTextForm(
                    hinttext: 'Nouran Elahazly ',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 12.39),
                  Text(
                    'Email',
                    style: TextStyles.caption1.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 7),
                  CustomeTextForm(
                    hinttext: 'example@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (!isvalidEmail(value!)) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 12.39),
                  Text(
                    'Password',
                    style: TextStyles.caption1.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 7),
                  Passwordtextform(
                    hinttext: '*********',
                    validator: (value) {
                      if (!isValidPassword(value!)) {
                        return 'Please enter a valid password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  main_button(
                    text: 'Sign Up ',
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        // Perform sign-up logic here
                        push(context, MobileNumberPage());
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  TEXTrichCUstomerWidget(
                    onpress: () {
                      pushReplace(context, LoginPage());
                    },
                    text1: 'Already have an account? ',
                    text2: 'Login',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
