import 'package:flutter/material.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.clear, size: 28),
          Icon(Icons.shopping_cart_outlined, size: 28),
        ],
      ),
    );
  }
}
