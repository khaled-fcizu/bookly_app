import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';

class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess({required this.books});
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksFailure({required this.errMessage});
}

class FeaturedBooksLoading extends FeaturedBooksState {}
