import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepoImpl) : super(SimilarBooksInitial());
  final HomeRepoImpl homeRepoImpl;
  late final List<BookModel> books;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var books = await homeRepoImpl.fetchSimilarBooks(
      category: category,
    );

    books.fold(
      (failure) {
        emit(SimilarBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        this.books = books;
        emit(SimilarBooksSuccess(books: books));
      },
    );
  }
}
