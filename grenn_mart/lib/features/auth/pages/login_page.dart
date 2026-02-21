import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grenn_mart/core/constants/app_images.dart';
import 'package:grenn_mart/core/functions/navigation.dart';
import 'package:grenn_mart/core/functions/validation.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/widgets/custome_text_form.dart';
import 'package:grenn_mart/core/widgets/main_button.dart';
import 'package:grenn_mart/core/widgets/passwordtextrform.dart';
import 'package:grenn_mart/core/widgets/t_e_x_trich_c_ustomer_widget.dart';
import 'package:grenn_mart/features/auth/pages/sign_page.dart';
import 'package:grenn_mart/features/main/main_app_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formkey,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(child: SvgPicture.asset(AppImages.carrotSvg)),
                  SizedBox(height: 40),
                  Text('Login', style: TextStyles.subtitle),
                  SizedBox(height: 16),
                  Text(
                    'Enter your email and password ',
                    style: TextStyles.caption1.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 38.6),
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
                  SizedBox(height: 12.29),
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
                  Align(
                    alignment: Alignment.centerRight,

                    child: TextButton(
                      onPressed: () {},

                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.caption1.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 39.88),
                  main_button(
                    text: 'Login  ',
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        push(context, MainAppPage());
                      }
                    },
                  ),
                  SizedBox(height: 25),
                  TEXTrichCUstomerWidget(
                    text1: "Don't have an account? ",
                    text2: 'Sign Up',
                    onpress: () {
                      pushReplace(context, SignPage());
                    },
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
