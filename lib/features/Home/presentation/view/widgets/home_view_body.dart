import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedListView(),
                SizedBox(height: 35),
                Text('Best Seller', style: Styles.textStyle18),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
