import 'package:cached_network_image/cached_network_image.dart';
import 'package:dog_app/src/presentation/bloc/dog_bloc/dog_bloc_bloc.dart';
import 'package:dog_app/src/presentation/widgets/bottom_navigation_bar.dart';
import 'package:dog_app/src/presentation/widgets/custom_alert_dialog.dart';
import 'package:dog_app/src/presentation/widgets/no_result.dart';
import 'package:dog_app/src/presentation/widgets/random_image.dart';
import 'package:dog_app/src/presentation/widgets/search_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

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
        centerTitle: true,
      ),
      body: BlocListener<DogBloc, DogState>(
        listener: (context, state) {
          if (state is RandomImageInitial) {
            RandomImageWidget.randomImageWidget(
                context, state.randomImage.message);
          }
        },
        child: Stack(
          children: [
            BlocBuilder<DogBloc, DogState>(
              builder: (context, state) {
                var breedList =
                    List<String>.from(state.breedList?["message"].keys);
                return state is UnFound
                    ? const NoResultWidget()
                    : GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: breedList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
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
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                  child: CachedNetworkImage(
                                    imageUrl: state.images![index],
                                    width: 45.w,
                                    height: 45.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0)),
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
                          );
                        },
                      );
              },
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CustomSearchField(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
