import 'package:bookly_app/features/Home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), FeaturedListView()]);
  }
}
