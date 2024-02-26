import 'package:dog_app/src/presentation/bloc/dog_bloc/dog_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    context.read<DogBloc>().add(GetBreeds());
    return BlocListener<DogBloc, DogState>(
      listener: (context, state) {
        if (state is DogInitial) {
          context.read<DogBloc>().add((GetBreedImage(
              breed: List<String>.from(state.breedList!["message"].keys))));
        } else if (state is DogImagesInitial) {
          Navigator.pushNamed(context, '/home');
        }
      },
      child: Scaffold(
        body: Center(
            child: Image.asset(
          "lib/assets/dog-photo.png",
          width: 64.0,
          height: 64.0,
        )),
      ),
    );
  }
}
