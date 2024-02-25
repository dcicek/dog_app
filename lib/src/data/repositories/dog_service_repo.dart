// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dog_app/src/data/datasources/service/service.dart';
import 'package:dartz/dartz.dart';
import 'package:dog_app/src/domain/model/error_model.dart';

class DogRepo {
  Services service;
  DogRepo({
    required this.service,
  });

  Future<Either<ErrorModel, Map<String, dynamic>>> getBreeds() async {
    try {
      final response = await service.getBreeds();

      return response;
    } catch (e) {
      log(e.toString());
      return const Left(ErrorModel(
          message: "Beklenmedik bir hata oluştu.", status: 'false', code: 500));
    }
  }

  Future<Either<ErrorModel, List<String>>> getImageByBreeds(
      List<String> breed) async {
    try {
      final response = await service.getImageByBreeds(breed);

      response.fold((l) {}, (r) async {});

      return response;
    } catch (e) {
      log(e.toString());
      return const Left(ErrorModel(
          message: "Beklenmedik bir hata oluştu.", status: 'false', code: 500));
    }
  }
}
