import 'package:dog_app/src/config/theme/font_property.dart';
import 'package:flutter/material.dart';

class NoResultWidget extends StatelessWidget {
  const NoResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No results found",
            style: TextStyle(
                fontSize: FontProperty.noResultTitle,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              "Try searching with another word",
              style: TextStyle(
                  fontSize: FontProperty.settingItemFontSize,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(60, 60, 67, 0.6)),
            ),
          )
        ],
      ),
    );
  }
}
