import 'package:cached_network_image/cached_network_image.dart';
import 'package:dog_app/src/presentation/bloc/dog_bloc/dog_bloc_bloc.dart';
import 'package:dog_app/src/presentation/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarWidget(),
      appBar: AppBar(
        title: const Text(
          '\$appName',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: BlocBuilder<DogBloc, DogState>(
        builder: (context, state) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: state.breedList!["message"].length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  child: CachedNetworkImage(
                    imageUrl: state.images![index],
                    width: 163.5,
                    height: 163.5,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
