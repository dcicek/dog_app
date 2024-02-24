import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        "lib/assets/dog-photo.png",
        width: 64.0,
        height: 64.0,
      )),
    );
  }
}
