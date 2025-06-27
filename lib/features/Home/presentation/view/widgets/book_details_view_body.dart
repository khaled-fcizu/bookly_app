import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/custom_book_image_item.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * .2;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SizedBox(height: 50),
          BookDetailsAppBar(),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width),
            child: CustomBookImageItem(),
          ),
          SizedBox(height: 42),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height: 16),

          BookRating(),
        ],
      ),
    );
  }
}
