import 'package:bookly_app/features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/Home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepoImpl) : super(NewestBooksInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var books = await homeRepoImpl.fetchNewestBooks();
    books.fold(
      (failure) {
        emit(NewestBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books: books));
      },
    );
  }
}
