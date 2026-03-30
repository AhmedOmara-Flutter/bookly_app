import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/similar_books_cubit/similar_books_cubit.dart';
import 'custom_horizontal_list_view_item.dart';

class CustomSimilarListView extends StatelessWidget {
  const CustomSimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
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
                final image = '${books[index].volumeInfo!.imageLinks!.thumbnail}';
                return CustomHorizontalListViewItem(
                  image: image,
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: books.length,
            ),
          );
        } else if (state is SimilarBooksError) {
          return Text(state.message);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
