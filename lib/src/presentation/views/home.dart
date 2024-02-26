import 'package:cached_network_image/cached_network_image.dart';
import 'package:dog_app/src/presentation/bloc/dog_bloc/dog_bloc_bloc.dart';
import 'package:dog_app/src/presentation/widgets/bottom_navigation_bar.dart';
import 'package:dog_app/src/presentation/widgets/custom_alert_dialog.dart';
import 'package:dog_app/src/presentation/widgets/no_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
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
      body: Stack(
        children: [
          BlocBuilder<DogBloc, DogState>(
            builder: (context, state) {
              var breedList = state is BreedFounded
                  ? List<String>.from(state.breedList!.keys)
                  : state is DogImagesInitial
                      ? List<String>.from(state.breedList!["message"].keys)
                      : [];
              return state is UnFound
                  ? const NoResultWidget()
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: breedList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            child: Stack(children: [
                              GestureDetector(
                                onTap: () {
                                  CustomAlertDialog.getAlert(
                                      context,
                                      {
                                        breedList[index]:
                                            state.breedList!["message"]
                                                [breedList[index]]
                                      },
                                      state.images![index]);
                                },
                                child: CachedNetworkImage(
                                  imageUrl: state.images![index],
                                  width: 163.5,
                                  height: 163.5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, 0.24)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      breedList[index],
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        );
                      },
                    );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 64,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: TextField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: 'Search',
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(60, 60, 67, 0.6))),
                  onChanged: (value) {
                    context.read<DogBloc>().add(SearchBreed(breed: value));
                  },
                  controller: searchController,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
