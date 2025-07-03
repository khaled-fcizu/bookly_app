import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/newest_list_view_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<NewestBooksCubit>().state;

    if (state is NewestBooksSuccess) {
      return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              left: 24,
              right: 12,
            ),
            child: NewestListViewItem(bookModel: state.books[index]),
          );
        }, childCount: state.books.length),
      );
    } else if (state is NewestBooksFailure) {
      return SliverToBoxAdapter(
        child: CustomErrorMessage(errMessage: state.errMessage),
      );
    } else {
      return SliverToBoxAdapter(child: CustomLoadingIndicator());
    }
  }
}
