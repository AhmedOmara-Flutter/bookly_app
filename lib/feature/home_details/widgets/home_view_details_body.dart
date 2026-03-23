import 'package:bookly_app/feature/home_details/widgets/book_image.dart';
import 'package:bookly_app/feature/home_details/widgets/book_info.dart';
import 'package:bookly_app/feature/home_details/widgets/price_action_button.dart';
import 'package:bookly_app/feature/home_details/widgets/top_bar.dart';
import 'package:flutter/material.dart';

import '../../home/widgets/book_rating.dart';
import '../../home/widgets/custom_horizontal_list_view.dart';

class HomeViewDetailsBody extends StatelessWidget {
  const HomeViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30),
          TopBar(),
          SizedBox(height: 20),
          BookImage(),
          SizedBox(height: 40),
          BookInfo(),
          SizedBox(height: 15),
          BookRating(rating: 4.5, numOfReviews: 1542),
          SizedBox(height: 20),
          PriceActionButton(),
          SizedBox(height: 45),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Text(
              'You can also like',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 20),
          CustomHorizontalListView(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
