import 'package:bookly_app/core/models/custom_vertical_list_view_model.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_best_seller_list_view_item.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';

class CustomVerticalListView extends StatefulWidget {
  const CustomVerticalListView({super.key});

  @override
  State<CustomVerticalListView> createState() =>
      _CustomVerticalListViewState();
}

class _CustomVerticalListViewState extends State<CustomVerticalListView> {
  final List<CustomVerticalListViewModel> books = [
    CustomVerticalListViewModel(
      title: 'Harry Potter and the Goblet of Fire',
      author: 'J.K. Rowling',
      price: '19.99 €',
      image: Assets.images.harryPotterAndThe.path,
      rating: 4.8,
      numOfReviews: 2390,
    ),
    CustomVerticalListViewModel(
      title: 'The Jungle Book',
      author: 'Rudyard Kipling',
      price: '11.99 €',
      image: Assets.images.book.path,
      rating: 4.2,
      numOfReviews: 1854,
    ),
    CustomVerticalListViewModel(
      title: 'The Jungle Book',
      author: 'Rudyard Kipling',
      price: '11.99 €',
      image: Assets.images.book.path,
      rating: 4.2,
      numOfReviews: 1854,
    ),
    CustomVerticalListViewModel(
      title: 'Star Wars Return of the Jedi',
      author: 'James Kahn',
      price: '10.99 €',
      image: Assets.images.book1.path,
      rating: 4.5,
      numOfReviews: 5152,
    ),
    CustomVerticalListViewModel(
      title: 'Star Wars Return of the Jedi',
      author: 'James Kahn',
      price: '10.99 €',
      image: Assets.images.book1.path,
      rating: 4.5,
      numOfReviews: 5152,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.bookDetailsView);
        },
        child: CustomBestSellerListViewItem(viewModel: books[index]),
      ),
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemCount: books.length,
    );
  }
}
