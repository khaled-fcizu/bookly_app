import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SlimilarBooksSection extends StatelessWidget {
  const SlimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          SimilarBooksListView(),
        ],
      ),
    );
  }
}
