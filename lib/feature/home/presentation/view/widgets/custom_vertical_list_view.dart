import 'package:bookly_app/core/models/custom_vertical_list_view_model.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_vertical_list_view_item.dart';
import 'package:bookly_app/feature/home/presentation/view_model/top_rated_weekly_cubit/top_rated_weekly_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';

class CustomVerticalListView extends StatelessWidget {
  const CustomVerticalListView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedWeeklyCubit, TopRatedWeeklyState>(
      builder: (context, state) {
        if (state is TopRatedWeaklyBooksSuccess) {
          final books = state.books;
          return SliverList.separated(
            itemBuilder: (context, index) =>
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.bookDetailsView);
                  },
                  child: CustomBestSellerListViewItem(viewModel: books[index]),
                ),
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemCount: books.length,
          );
        } else if (state is TopRatedWeaklyBooksError) {
          return SliverToBoxAdapter(child: Text(state.message));
        }
        return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
