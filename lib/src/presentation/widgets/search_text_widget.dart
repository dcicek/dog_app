import 'package:dog_app/src/presentation/bloc/dog_bloc/dog_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CustomSearchField extends StatefulWidget {
  const CustomSearchField({super.key});

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  TextEditingController searchController = TextEditingController();
  double height = 64.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: GestureDetector(
        onVerticalDragUpdate: (details) {
          int sensitivity = 8;
          if (details.delta.dy > sensitivity) {
            print("*****");
          } else if (details.delta.dy < -sensitivity) {
            print("-----");
          }
        },
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
              hintStyle: TextStyle(color: Color.fromRGBO(60, 60, 67, 0.6))),
          onChanged: (value) {
            context.read<DogBloc>().add(SearchBreed(breed: value));
          },
          onTap: () {
            setState(() {
              height = 20.h;
            });
          },
          controller: searchController,
        ),
      ),
    );
  }
}
