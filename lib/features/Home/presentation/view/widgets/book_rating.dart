import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 16,
        ),
        SizedBox(width: 8),
        Text(
          '4.8',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 5),
        Text(
          '(2902)',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
