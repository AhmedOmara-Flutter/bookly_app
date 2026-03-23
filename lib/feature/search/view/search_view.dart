import 'package:bookly_app/feature/search/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
      ),
      body: SearchViewBody(),
    );
  }
}
