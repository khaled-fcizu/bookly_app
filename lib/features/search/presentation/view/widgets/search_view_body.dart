import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/managers/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/search_reasult_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          SafeArea(
            child: CustomSearchTextField(
              onChanged: (value) {
                BlocProvider.of<SearchCubit>(
                  context,
                ).fetchSimilarBooks(query: value);
              },
            ),
          ),
          Text('Search Result', style: Styles.textStyle18),
          SizedBox(height: 10),
          Expanded(child: SearchReasultListView()),
        ],
      ),
    );
  }
}
