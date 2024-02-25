import 'package:dog_app/src/presentation/bloc/dog_bloc/dog_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<DogBloc>().add(GetBreeds());
    return Scaffold(
      body: Center(
          child: Image.asset(
        "lib/assets/dog-photo.png",
        width: 64.0,
        height: 64.0,
      )),
    );
  }
}
