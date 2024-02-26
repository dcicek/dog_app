import 'package:cached_network_image/cached_network_image.dart';
import 'package:dog_app/src/config/theme/colors.dart';
import 'package:dog_app/src/config/theme/font_property.dart';
import 'package:dog_app/src/presentation/widgets/divider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAlertDialog {
  static getAlert(
      BuildContext context, Map<String, dynamic>? breedList, String image) {
    List<String> tempKeys = List<String>.from(breedList!.keys);
    List<String> tempValues = [];
    breedList.values.forEach((element) {
      tempValues.add(element.toString());
    });
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          actions: [
            Container(
              width: 80.w,
              height: 70.h,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(children: [
                CachedNetworkImage(
                  imageUrl: image,
                  height: 35.h,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Breed",
                  style: TextStyle(
                      fontSize: FontProperty.alertTitle,
                      color: ThemeColors.alertTitleColor),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomDivider(),
                const SizedBox(
                  height: 8,
                ),
                Text(tempKeys[0],
                    style: TextStyle(
                        fontSize: FontProperty.settingItemFontSize,
                        color: Colors.black)),
                const SizedBox(
                  height: 8,
                ),
                Text("Sub Breed",
                    style: TextStyle(
                        fontSize: FontProperty.alertTitle,
                        color: ThemeColors.alertTitleColor)),
                const SizedBox(
                  height: 8,
                ),
                const CustomDivider(),
                const SizedBox(
                  height: 8,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: tempValues.length,
                  itemBuilder: (context, index) {
                    return Text(tempValues[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: FontProperty.settingItemFontSize,
                            color: Colors.black));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const SizedBox(
                      width: 300,
                      height: 50,
                      child: Center(
                          child: Text(
                        "Generate",
                        style: TextStyle(fontSize: 18),
                      ))),
                )
              ]),
            )
          ],
        );
      },
    );
  }
}
