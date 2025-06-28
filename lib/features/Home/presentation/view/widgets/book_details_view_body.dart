import 'package:bookly_app/features/Home/presentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/book_details_section.dart';

import 'package:bookly_app/features/Home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                SizedBox(height: 10),
                SafeArea(child: BookDetailsAppBar()),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 30)),
                SlimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
