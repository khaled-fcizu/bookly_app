import 'package:bookly_app/core/functions/custom_url_lancher.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              backgroundColor: Colors.white,
              buttonTitle: 'Free',
              textColor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                await customUrlLuncher(
                  context,
                  bookModel.volumeInfo.canonicalVolumeLink,
                );
              },
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              backgroundColor: Color(0xffEF8262),
              buttonTitle: 'Free preview',
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
