import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listview_cubit_hooks/domain/books/model/book.dart';
import 'package:listview_cubit_hooks/domain/books/use_case/delete_all_books.dart';
import 'package:listview_cubit_hooks/domain/books/use_case/get_all_books.dart';
import 'package:listview_cubit_hooks/domain/books/use_case/save_book.dart';

part 'books_list_cubit.freezed.dart';
part 'books_list_page_state.dart';

@injectable
class BooksListCubit extends Cubit<BooksListPageState> {
  final GetAllBooksUseCase _getAllBooksUseCase;
  final SaveBookUseCase _saveBookUseCase;
  final DeleteAllBooksUseCase _deleteAllBooksUseCase;
  List<Book> _books = [];

  BooksListCubit(
    this._getAllBooksUseCase,
    this._saveBookUseCase,
    this._deleteAllBooksUseCase,
  ) : super(const BooksListPageState.loading());

  Future<void> init() async {
    await getAllBooks();
  }

  Future<void> getAllBooks() async {
    emit(const BooksListPageState.loading());
    _books = _getAllBooksUseCase();
    if (_books.isNotEmpty) {
      emit(BooksListPageState.success(List.of(_books)));
    } else {
      emit(const BooksListPageState.empty());
    }
  }

  Future<void> deleteAll() async {
    emit(const BooksListPageState.loading());
    await _deleteAllBooksUseCase();
    emit(const BooksListPageState.empty());
  }

  Future<void> markBookAsReadOrUnread(Book book, bool readAlready) async {
    final idx = _books.indexWhere((b) => b.id == book.id);
    if (idx == -1) {
      /// Book wasn't found. This shouldn't happen, but in a production app
      /// I would advice to have a proper error handling with emission
      /// of an error state and showing a snackbar/dialog.
      return;
    }
    final updatedBook = book.copyWith(readAlready: readAlready);
    _books[idx] = updatedBook;
    await _saveBookUseCase(updatedBook);
    emit(BooksListPageState.success(List.of(_books)));
  }
}
