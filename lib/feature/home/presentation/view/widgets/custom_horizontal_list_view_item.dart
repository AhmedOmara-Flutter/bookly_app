import 'package:flutter/material.dart';

class CustomHorizontalListViewItem extends StatelessWidget {
  final String image;

  const CustomHorizontalListViewItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.fill
            )
        ),
      ),
    );
  }
}
