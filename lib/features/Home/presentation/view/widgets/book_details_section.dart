import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/books_action.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * .2;
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width),
            child: CustomBookImageItem(
              imageUrl:
                  bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          ),
          SizedBox(height: 30),
          Text(
            bookModel.volumeInfo.title!,
            textAlign: TextAlign.center,

            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              bookModel.volumeInfo.authors![0],
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height: 16),
          BookRating(count: 0, rating: 0),
          SizedBox(height: 20),
          BooksAction(bookModel: bookModel),
        ],
      ),
    );
  }
}
