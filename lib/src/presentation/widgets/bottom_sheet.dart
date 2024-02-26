import 'package:dog_app/src/presentation/widgets/divider.dart';
import 'package:dog_app/src/presentation/widgets/setting_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBottomSheet {
  static showBottomSheet(BuildContext context, String os) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 100.h,
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(children: [
              const CustomSettingItem(
                  assetName: "lib/assets/help.png", title: "Help"),
              const CustomDivider(),
              const CustomSettingItem(
                  assetName: "lib/assets/rate.png", title: "Rate Us"),
              const CustomDivider(),
              const CustomSettingItem(
                  assetName: "lib/assets/share.png",
                  title: "Share with Friends"),
              const CustomDivider(),
              const CustomSettingItem(
                  assetName: "lib/assets/terms.png", title: "Terms of Use"),
              const CustomDivider(),
              const CustomSettingItem(
                  assetName: "lib/assets/privacy.png", title: "Privacy Policy"),
              const CustomDivider(),
              CustomSettingItem(
                assetName: "lib/assets/os.png",
                title: "OS Version",
                osInfo: os,
              ),
            ]),
          ),
        );
      },
    );
  }
}
