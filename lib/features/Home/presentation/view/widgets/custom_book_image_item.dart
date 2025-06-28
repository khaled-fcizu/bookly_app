import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 3.7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
          ),
          color: Colors.red,
        ),
      ),
    );
  }
}

// height: MediaQuery.of(context).size.height * .3,
