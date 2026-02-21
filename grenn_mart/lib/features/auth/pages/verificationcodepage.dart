import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/widgets/main_button.dart';
import 'package:grenn_mart/features/main/main_app_page.dart';
import 'package:pinput/pinput.dart';
import 'package:grenn_mart/core/functions/navigation.dart';

class Verificationcodepage extends StatefulWidget {
  const Verificationcodepage({super.key});

  @override
  State<Verificationcodepage> createState() => _VerificationcodepageState();
}

class _VerificationcodepageState extends State<Verificationcodepage> {
  late final TextEditingController pinController;
  late final FocusNode focusNode;
  late final GlobalKey<FormState> formKey;

  // Timer variables
  int _secondsRemaining = 83; // 1:23
  Timer? _timer;
  bool _isTimerFinished = false;
  bool _isOtpCorrect = false;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    pinController = TextEditingController();
    focusNode = FocusNode();
    _startTimer();
  }

  void _startTimer() {
    _isTimerFinished = false;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        timer.cancel();
        setState(() {
          _isTimerFinished = true;
        });
      }
    });
  }

  String get _timerText {
    int minutes = _secondsRemaining ~/ 60;
    int seconds = _secondsRemaining % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  void _resendOTP() {
    print('Resending OTP...');

    setState(() {
      _secondsRemaining = 83;
      _isTimerFinished = false;
      _isOtpCorrect = false;
      pinController.clear();
    });

    _startTimer();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('OTP sent successfully!'),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = AppColors.accentColor;
    const borderColor = AppColors.backgroundColor;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => pop(context),
        ),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Title
                Text('Enter verification code', style: TextStyles.title),

                SizedBox(height: 12),

                // Subtitle
                Text(
                  'We have sent SMS to: 01XXXXXXXXXX',
                  style: TextStyles.caption1.copyWith(
                    color: AppColors.grayColor,
                  ),
                ),

                SizedBox(height: 40),

                // OTP Input
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Pinput(
                    length: 5,
                    controller: pinController,
                    focusNode: focusNode,
                    defaultPinTheme: defaultPinTheme,
                    separatorBuilder: (index) => const SizedBox(width: 8),

                    validator: (value) {
                      // Replace '12345' with your actual OTP verification
                      if (value == '12345') {
                        _isOtpCorrect = true;
                        return null; // Valid OTP
                      }
                      return 'Pin is incorrect';
                    },

                    hapticFeedbackType: HapticFeedbackType.lightImpact,

                    onCompleted: (pin) {
                      print('OTP Completed: $pin');
                      // Auto validate when complete
                      formKey.currentState!.validate();

                      if (_isOtpCorrect) {
                        // Navigate to next screen
                        print('OTP Verified Successfully!');
                        push(context, MainAppPage());
                      }
                    },

                    onChanged: (value) {
                      print('OTP Changed: $value');
                    },

                    // Focused state
                    focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        border: Border.all(
                          color: AppColors.accentColor,
                          width: 2,
                        ),
                      ),
                    ),

                    // Submitted state
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 2,
                        ),
                      ),
                    ),

                    // Error state
                    errorPinTheme: defaultPinTheme.copyBorderWith(
                      border: Border.all(color: Colors.redAccent, width: 2),
                    ),
                  ),
                ),

                SizedBox(height: 24),

                // Change Phone Number
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        pop(context);
                      },
                      child: Text(
                        'Change Phone Number',
                        style: TextStyles.caption1.copyWith(
                          color: AppColors.grayColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24),

                // Confirm Button
                main_button(
                  text: 'Confirm',
                  onPressed: () {
                    focusNode.unfocus();
                    formKey.currentState!.validate();

                    if (_isOtpCorrect) {
                      print('Navigating to next screen...');
                      // Navigate to home or next screen
                      push(context, MainAppPage());
                    }
                  },
                ),

                SizedBox(height: 20),

                Center(
                  child: _isTimerFinished && !_isOtpCorrect
                      ? TextButton(
                          onPressed: _resendOTP,
                          child: Text(
                            'Resend OTP',
                            style: TextStyles.caption1.copyWith(
                              color: AppColors.tangoColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      : TextButton(
                          onPressed: null,
                          child: Text(
                            'Resend confirmation code ($_timerText)',
                            style: TextStyles.caption1.copyWith(
                              color: AppColors.grayColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }
}
