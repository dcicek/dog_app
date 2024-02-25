part of 'dog_bloc_bloc.dart';

abstract class DogState {
  final Map<String, dynamic>? breedList;
  final List<String>? images;

  DogState({required this.breedList, required this.images});
}

class Loading extends DogState {
  Loading({required super.breedList, required super.images});
}

class DogInitial extends DogState {
  final Map<String, dynamic>? breedList;
  final List<String>? images;
  DogInitial({this.breedList, this.images})
      : super(breedList: breedList, images: images);

  List<Object> get props => [breedList ?? Object()];
}

class DogImagesInitial extends DogState {
  final Map<String, dynamic>? breedList;
  final List<String> images;
  DogImagesInitial(
    this.images, {
    this.breedList,
  }) : super(breedList: breedList, images: images);

  List<Object> get props => [breedList ?? Object()];
}

class UnFound extends DogState {
  UnFound({required super.breedList, required super.images});
}

class Failed extends DogState {
  final ErrorModel error;
  Failed({
    required this.error,
  }) : super(breedList: null, images: null);
  List<Object> get props => [error];
}
