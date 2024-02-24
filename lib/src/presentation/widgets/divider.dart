import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 2,
      indent: 20, // Sol kenardan başlayarak iç boşluk (indent)
    );
  }
}