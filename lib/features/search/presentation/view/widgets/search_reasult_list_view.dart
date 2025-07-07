import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/newest_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/managers/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchReasultListView extends StatelessWidget {
  const SearchReasultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books?.length ?? 0,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: NewestListViewItem(
                  bookModel: state.books![index],
                ),
              );
            },
          );
        } else if (state is SearchFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else if (state is SearchLoading) {
          return CustomLoadingIndicator();
        } else {
          return Center(
            child: Text('No results yet', style: Styles.textStyle20),
          );
        }
      },
    );
  }
}
