part of 'dog_bloc_bloc.dart';

abstract class DogState {}

class Loading extends DogState {}

class DogInitial extends DogState {
  bool? initialState;

  DogInitial({
    this.initialState,
  });
}
