import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';

class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  NewestBooksSuccess({required this.books});
}

class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  NewestBooksFailure({required this.errMessage});
}

class NewestBooksLoading extends NewestBooksState {}
