import 'package:dog_app/src/config/theme/colors.dart';
import 'package:dog_app/src/config/theme/font_property.dart';
import 'package:dog_app/src/presentation/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  static const platform = MethodChannel('com.example.dog_app');

  Future<String> getOsInfo() async {
    try {
      String osPlatform = await platform.invokeMethod('getOsInfo');
      return osPlatform;
    } on PlatformException catch (e) {
      print('Error: $e');
      return "HATA";
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColors.bottomNavBarBg,
        ),
        height: 98,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.home_filled,
                        size: FontProperty.bottomNavBarIconSize,
                        color: const Color.fromRGBO(0, 85, 211, 1),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: const Color.fromRGBO(0, 85, 211, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: FontProperty.bottomNavBarFontSize),
                      )
                    ],
                  ),
                ),
                Text(
                  "|",
                  style: TextStyle(fontSize: 25, color: ThemeColors.customGray),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      String os = await getOsInfo();
                      CustomBottomSheet.settingsBottomSheet(context, os);
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.build,
                          size: FontProperty.bottomNavBarIconSize,
                        ),
                        Text("Settings",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontProperty.bottomNavBarFontSize))
                      ],
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height); // Sol alt köşe
    path.lineTo(15, 0); // Sol üst köşe (15 radius)
    path.quadraticBezierTo(0, 0, 450, 0); // Sol üst köşe eğrisi
    path.lineTo(size.width - 20, 0); // Sağ üst köşe (15 radius)
    path.quadraticBezierTo(
        size.width, 0, size.width, 450); // Sağ üst köşe eğrisi
    path.lineTo(size.width, size.height); // Sağ alt köşe

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
