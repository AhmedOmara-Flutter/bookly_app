import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/home_view_cubit.dart';
import 'custom_horizontal_list_view_item.dart';

class CustomHorizontalListView extends StatefulWidget {
  const CustomHorizontalListView({super.key});

  @override
  State<CustomHorizontalListView> createState() =>
      _CustomHorizontalListViewState();
}

class _CustomHorizontalListViewState extends State<CustomHorizontalListView> {

  final List<String> books = [
    Assets.images.book1High.path,
    Assets.images.book2High.path,
    Assets.images.harryPotterAndThe.path,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewCubit, HomeViewState>(
      builder: (context, state) {
        if (state is HomeViewSuccess) {
          final books = state.books;
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.25,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final image = 'https://covers.openlibrary.org/b/id/${books[index]
                    .coverI}-L.jpg';
                return CustomHorizontalListViewItem(
                  image: image,
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: books.length,
            ),
          );
        } else if (state is HomeViewError) {
          return Text(state.message);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
