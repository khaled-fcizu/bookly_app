import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: customOutlinedInputBorder(),
        enabledBorder: customOutlinedInputBorder(),
        focusedBorder: customOutlinedInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Opacity(opacity: .7, child: Icon(Icons.search)),
        ),
      ),
    );
  }

  OutlineInputBorder customOutlinedInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
