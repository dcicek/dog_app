import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RandomImageWidget {
  static randomImageWidget(BuildContext context, String imageUrl) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: imageUrl,
                width: 90.w,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    child: const Icon(Icons.close),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
