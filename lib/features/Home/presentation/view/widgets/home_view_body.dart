import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/newest_list_view.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
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
                Text('Newest Books', style: Styles.textStyle18),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        NewestListView(),
      ],
    );
  }
}
