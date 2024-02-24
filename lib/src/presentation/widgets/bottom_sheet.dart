import 'package:dog_app/src/presentation/widgets/divider.dart';
import 'package:dog_app/src/presentation/widgets/setting_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBottomSheet {
  static showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 100.h,
          child: const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(children: [
              CustomSettingItem(
                  assetName: "lib/assets/help.png", title: "Help"),
              CustomDivider(),
              CustomSettingItem(
                  assetName: "lib/assets/rate.png", title: "Rate Us"),
              CustomDivider(),
              CustomSettingItem(
                  assetName: "lib/assets/share.png",
                  title: "Share with Friends"),
              CustomDivider(),
              CustomSettingItem(
                  assetName: "lib/assets/terms.png", title: "Terms of Use"),
              CustomDivider(),
              CustomSettingItem(
                  assetName: "lib/assets/privacy.png", title: "Privacy Policy"),
              CustomDivider(),
              CustomSettingItem(
                assetName: "lib/assets/os.png",
                title: "OS Version",
                osInfo: "6.7",
              ),
            ]),
          ),
        );
      },
    );
  }
}
