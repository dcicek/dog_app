import 'dart:developer';
import 'dart:ui';

import 'package:dog_app/src/data/repositories/dog_service_repo.dart';
import 'package:dog_app/src/domain/model/error_model.dart';
import 'package:dog_app/src/domain/model/image_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dog_bloc_state.dart';
part 'dog_bloc_event.dart';

class DogBloc extends Bloc<DogEvent, DogState> {
  DogRepo repo;
  DogBloc(this.repo) : super(DogInitial()) {
    on<GetBreeds>((event, emit) async {
      try {
        emit(Loading(
            breedList: {}, images: [], tempBreedList: {}, tempImages: []));
        final response = await repo.getBreeds();

        response.fold((l) {
          emit(Failed(error: l, tempBreedList: {}, tempImages: []));
        }, (r) {
          emit(DogInitial(breedList: r, tempBreedList: r));
        });
      } catch (e) {
        log(e.toString());

        emit(Failed(
            error: const ErrorModel(
                code: 500,
                message: "Beklenmeyen bir hata oluştu",
                status: "false"),
            tempBreedList: {},
            tempImages: []));
      }
    });

    on<GetBreedImage>((event, emit) async {
      try {
        emit(Loading(
            breedList: state.breedList,
            images: [],
            tempBreedList: state.breedList,
            tempImages: []));
        final response = await repo.getImageByBreeds(event.breed);

        response.fold((l) {
          emit(Failed(error: l, tempBreedList: {}, tempImages: []));
        }, (r) {
          emit(DogImagesInitial(r,
              breedList: state.breedList,
              tempBreedList: state.tempBreedList,
              tempImages: r));
        });
      } catch (e) {
        log(e.toString());

        emit(Failed(
            error: const ErrorModel(
                code: 500,
                message: "Beklenmeyen bir hata oluştu",
                status: "false"),
            tempBreedList: {},
            tempImages: []));
      }
    });

    on<SearchBreed>((event, emit) async {
      try {
        emit(Loading(
            breedList: state.breedList,
            images: state.images,
            tempBreedList: state.tempBreedList,
            tempImages: state.tempImages));
        Map<String, dynamic> oldBreedList = state.tempBreedList!;
        Map<String, dynamic> newBreedList = {};
        List<String> tempList =
            List<String>.from(state.tempBreedList!["message"].keys);
        List<String> images = [];
        List<String>? oldImages = state.tempImages;

        for (int i = 0; i < tempList.length; i++) {
          if (tempList[i].contains(event.breed)) {
            newBreedList
                .addAll({tempList[i]: oldBreedList["message"][tempList[i]]});
            images.add(oldImages![i]);
          }
        }
        if (newBreedList.isEmpty) {
          emit(UnFound(
              breedList: null,
              images: null,
              tempBreedList: oldBreedList,
              tempImages: oldImages));
        } else {
          emit(BreedFounded(
              breedList: newBreedList,
              images: images,
              tempBreedList: oldBreedList,
              tempImages: oldImages));
        }
      } catch (e) {
        log(e.toString());

        emit(Failed(
            error: const ErrorModel(
                code: 500,
                message: "Beklenmeyen bir hata oluştu",
                status: "false"),
            tempBreedList: state.tempBreedList,
            tempImages: state.tempImages));
      }
    });
  }
}
