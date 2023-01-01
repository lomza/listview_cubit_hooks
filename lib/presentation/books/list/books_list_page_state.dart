part of 'books_list_cubit.dart';

@freezed
class BooksListPageState with _$BooksListPageState {
  const factory BooksListPageState.loading() = BooksListPageLoading;

  const factory BooksListPageState.empty() = BooksListPageEmpty;

  const factory BooksListPageState.success(List<Book> books) = BooksListPageSuccess;
}
