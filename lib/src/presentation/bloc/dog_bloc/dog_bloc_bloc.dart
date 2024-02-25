import 'package:dog_app/src/data/repositories/dog_service_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dog_bloc_state.dart';
part 'dog_bloc_event.dart';

class DogBloc extends Bloc<DogEvent, DogState> {
  DogRepo repo;
  DogBloc(this.repo) : super(DogInitial()) {
    on<GetBreeds>((event, emit) {
      //  implement event handler
      //emit(ColorUpdateState(initialState: initState));
    });
  }
}
