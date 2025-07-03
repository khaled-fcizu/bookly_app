import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/book_details_section.dart';

import 'package:bookly_app/features/Home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBox(height: 10),
              SafeArea(child: BookDetailsAppBar()),
              BookDetailsSection(bookModel: bookModel),
              Expanded(child: SizedBox(height: 30)),
              SlimilarBooksSection(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
