import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search',
        suffixIcon: Icon(Icons.close),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white),

        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      style: TextStyle(fontSize: 18),
      cursorColor: Colors.white,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      maxLines: 1,
      minLines: 1,
      onChanged: (value) {},
      onFieldSubmitted: (value) {},
    );
  }
}
