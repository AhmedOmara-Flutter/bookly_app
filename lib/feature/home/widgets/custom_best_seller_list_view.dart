import 'package:bookly_app/feature/home/widgets/custom_best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import '../../../core/models/custom_best_seller_list_view_model.dart';
import '../../../generated/assets.dart';

class CustomBestSellerListView extends StatefulWidget {
  const CustomBestSellerListView({super.key});

  @override
  State<CustomBestSellerListView> createState() =>
      _CustomBestSellerListViewState();
}

class _CustomBestSellerListViewState extends State<CustomBestSellerListView> {
  final List<CustomBestSellerListViewModel> books = [
    CustomBestSellerListViewModel(
      title: 'Harry Potter and the Goblet of Fire',
      author: 'J.K. Rowling',
      price: '19.99 €',
      image: Assets.images.harryPotterAndThe.path,
      rating: 4.8,
      numOfReviews: 2390,
    ),
    CustomBestSellerListViewModel(
      title: 'The Jungle Book',
      author: 'Rudyard Kipling',
      price: '11.99 €',
      image: Assets.images.book.path,
      rating: 4.2,
      numOfReviews: 1854,
    ),
    CustomBestSellerListViewModel(
      title: 'The Jungle Book',
      author: 'Rudyard Kipling',
      price: '11.99 €',
      image: Assets.images.book.path,
      rating: 4.2,
      numOfReviews: 1854,
    ),
    CustomBestSellerListViewModel(
      title: 'Star Wars Return of the Jedi',
      author: 'James Kahn',
      price: '10.99 €',
      image: Assets.images.book1.path,
      rating: 4.5,
      numOfReviews: 5152,
    ),
    CustomBestSellerListViewModel(
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
      itemBuilder: (context, index) => CustomBestSellerListViewItem(viewModel: books[index],),
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemCount: books.length,
    );
  }
}
