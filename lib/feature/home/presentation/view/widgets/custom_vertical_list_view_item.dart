import 'package:flutter/material.dart';
import '../../../data/model/book_model.dart';
import 'book_rating.dart';

class CustomVerticalListViewItem extends StatelessWidget {
  final BookModel viewModel;

  const CustomVerticalListViewItem({super.key, required this.viewModel});
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
              image: NetworkImage('https://covers.openlibrary.org/b/id/${viewModel.coverI}-L.jpg'),
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
                viewModel.title??'Untitled',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10),
              ...viewModel.authorName!.map((e){
                return Text(
                  e,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                );
              }),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                  r'19.99$',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Spacer(),
                  BookRating(rating: 0.0,
                      numOfReviews: viewModel.editionCount!.toInt()),

                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
