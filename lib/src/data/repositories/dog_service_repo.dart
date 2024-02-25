// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dog_app/src/data/datasources/service/service.dart';

class DogRepo {
  Services service;
  DogRepo({
    required this.service,
  });

  getBreeds() {
    service.getBreeds();
  }
}
