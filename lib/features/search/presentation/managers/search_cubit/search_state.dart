part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  List<BookModel>? books;
  SearchSuccess({this.books});
}

final class SearchFailure extends SearchState {
  String errMessage;
  SearchFailure({required this.errMessage});
}
