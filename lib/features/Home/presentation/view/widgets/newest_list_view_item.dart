import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    final title = bookModel.volumeInfo.title ?? 'No Title';
    final authors = bookModel.volumeInfo.authors;
    final authorName =
        (authors != null && authors.isNotEmpty)
            ? authors[0]
            : 'Unknown Author';
    final imageUrl = bookModel.volumeInfo.imageLinks?.thumbnail ?? '';

    return GestureDetector(
      onTap: () {
        GoRouter.of(
          context,
        ).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImageItem(imageUrl: imageUrl),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      title,
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.w600,
                        fontFamily: kGtSecrta,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    authorName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(count: 0, rating: 0),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
