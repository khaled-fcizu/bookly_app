import 'package:bookly_app/features/Home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchReasultListView extends StatelessWidget {
  const SearchReasultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
