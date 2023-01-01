part of 'book_details_cubit.dart';

@freezed
class BookDetailsPageState with _$BookDetailsPageState {
  const factory BookDetailsPageState.loading() = _BookDetailsPageLoading;
  const factory BookDetailsPageState.loadBook(Book? book) = _BookDetailsPageLoadBook;
  const factory BookDetailsPageState.saveBook() = BookDetailsPageSaveBook;
  const factory BookDetailsPageState.deleteBook() = BookDetailsPageDeleteBook;
}
