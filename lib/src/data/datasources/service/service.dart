import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dog_app/src/data/datasources/api_connection.dart';
import 'package:dog_app/src/domain/model/error_model.dart';
import 'package:dog_app/src/domain/model/image_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:http/http.dart' as http;

class Services {
  Future<Either<ErrorModel, Map<String, dynamic>>> getBreeds() async {
    final response =
        await http.get(Uri.parse('${ApiConnection.apiInfo}breeds/list/all'));

    Map<String, List<dynamic>> list = {};

    Map<String, dynamic> data = json.decode(response.body);

    data.forEach((key, value) {
      list[key] = value is List ? value : [value];
    });

    switch (response.statusCode) {
      case 200:
        return Right(data);
      default:
        return Left(ErrorModel.fromJson(response.body));
    }
  }

  Future<Either<ErrorModel, List<String>>> getImageByBreeds(
      List<String> breed) async {
    List<String> images = [];
    Map<String, dynamic> image;
    try {
      for (var item in breed) {
        final response = await http.get(
            Uri.parse('${ApiConnection.apiInfo}breed/$item/images/random'));

        switch (response.statusCode) {
          case 200:
            String temp = response.body.replaceAll(r'\', '');
            image = json.decode(temp);
            images.add(image["message"]);

            //Url'i çekilen resmin cache'e alınma işlemi yapılıyor.
            final imageBytes = await downloadImage(image["message"]);
            await DefaultCacheManager().putFile(item, imageBytes);

          default:
            return Left(ErrorModel.fromJson(response.body));
        }
      }
      return Right(images);
    } catch (e) {
      log(e.toString());
      return const Left(
          ErrorModel(code: 500, message: "Bir hata oluştu", status: "false"));
    }
  }

  Future<Uint8List> downloadImage(String imageUrl) async {
    final response = await http.get(Uri.parse(imageUrl));

    if (response.statusCode == 200) {
      return response.bodyBytes;
    } else {
      throw Exception('Fail');
    }
  }

  Future<Either<ErrorModel, ImageModel>> generateRandomImage(
      String breed) async {
    try {
      final response = await http
          .get(Uri.parse('${ApiConnection.apiInfo}breed/$breed/images/random'));

      switch (response.statusCode) {
        case 200:
          String temp = response.body.replaceAll(r'\', '');
          return Right(ImageModel.fromJson(temp));
        default:
          return Left(ErrorModel.fromJson(response.body));
      }
    } catch (e) {
      log(e.toString());
      return const Left(
          ErrorModel(code: 500, status: "false", message: "Bir hata oluştu"));
    }
  }
}
