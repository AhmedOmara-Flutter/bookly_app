import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/top_rated_daily_cubit/top_rated_daily_cubit.dart';
import 'custom_horizontal_list_view_item.dart';

class CustomHorizontalListView extends StatelessWidget {
  const CustomHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedDailyCubit, TopRatedDailyState>(
      builder: (context, state) {
        if (state is TopRatedDailyBooksSuccess) {
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
        } else if (state is TopRatedDailyBooksError) {
          return Text(state.message);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
