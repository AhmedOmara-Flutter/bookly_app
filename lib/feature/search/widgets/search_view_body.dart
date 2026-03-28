import 'package:bookly_app/feature/search/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../home/presentation/view/widgets/custom_vertical_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomTextFormField(),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Search Result',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          CustomVerticalListView(),
        ],
      ),
    );
  }
}
