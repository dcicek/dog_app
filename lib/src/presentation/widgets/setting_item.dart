import 'package:dog_app/src/config/theme/font_property.dart';
import 'package:flutter/material.dart';

class CustomSettingItem extends StatelessWidget {
  final String assetName;
  final String title;
  final String? osInfo;
  const CustomSettingItem(
      {super.key, required this.assetName, required this.title, this.osInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(assetName, width: FontProperty.bottomNavBarIconSize),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: FontProperty.settingItemFontSize,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Spacer(),
          osInfo == null
              ? Image.asset("lib/assets/ArrowUpRight.png",
                  width: FontProperty.bottomNavBarIconSize)
              : Text(
                  osInfo!,
                  style: const TextStyle(
                      fontSize: 13, color: Color.fromRGBO(60, 60, 67, 0.6)),
                ),
        ],
      ),
    );
  }
}
