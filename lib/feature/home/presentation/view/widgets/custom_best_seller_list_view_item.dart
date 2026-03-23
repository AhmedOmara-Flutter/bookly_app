import 'package:bookly_app/core/models/custom_vertical_list_view_model.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';

class CustomBestSellerListViewItem extends StatelessWidget {
  final CustomVerticalListViewModel viewModel;

  const CustomBestSellerListViewItem({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 120,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(viewModel.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                viewModel.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10),
              Text(
                viewModel.author,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    viewModel.price,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Spacer(),
                  BookRating(rating: viewModel.rating,
                      numOfReviews: viewModel.numOfReviews),

                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
