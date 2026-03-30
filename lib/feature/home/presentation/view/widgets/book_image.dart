import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  final String image;
  const BookImage({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: AspectRatio(
        aspectRatio: 2.5 / 3.5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image:NetworkImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
