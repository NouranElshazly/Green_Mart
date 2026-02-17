import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grenn_mart/core/styles/app_theme.dart';
import 'features/intro/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Container(),
        );
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
