import 'package:bookly_app/feature/home/presentation/view/widgets/price_action_button.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import '../../../data/model/book_model.dart';
import 'book_image.dart';
import 'book_info.dart';
import 'book_rating.dart';
import 'custom_horizontal_list_view.dart';
import 'custom_similar_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({super.key,required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30),
          TopBar(),
          SizedBox(height: 20),
          BookImage(image: '${bookModel.coverI}',),
          SizedBox(height: 40),
          BookInfo(title: bookModel.title??'Untitled',),
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
          CustomSimilarListView(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
