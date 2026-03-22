import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final double rating;
  final int numOfReviews;

  const BookRating({super.key, required this.rating, required this.numOfReviews});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.amber),
        Text('$rating'),
        SizedBox(width: 10),
        Text(
          '($numOfReviews)',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
