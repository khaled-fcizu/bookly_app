import 'package:bookly_app/features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/Home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImpl)
    : super(FeaturedBooksInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void> fetchFeaturdBooks() async {
    emit(FeaturedBooksLoading());
    var books = await homeRepoImpl.fetchFeaturedBooks();
    books.fold(
      (failure) {
        emit(FeaturedBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books: books));
      },
    );
  }
}
