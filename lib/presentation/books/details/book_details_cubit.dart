import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listview_cubit_hooks/domain/books/model/book.dart';
import 'package:listview_cubit_hooks/domain/books/use_case/delete_book.dart';
import 'package:listview_cubit_hooks/domain/books/use_case/get_book_by_id.dart';
import 'package:listview_cubit_hooks/domain/books/use_case/save_book.dart';

part 'book_details_cubit.freezed.dart';
part 'book_details_page_state.dart';

@injectable
class BookDetailsCubit extends Cubit<BookDetailsPageState> {
  final GetBookByIdUseCase _getBookByIdUseCase;
  final SaveBookUseCase _saveBookUseCase;
  final DeleteBookUseCase _deleteBookUseCase;

  Book? _currentBook;

  BookDetailsCubit(
    this._getBookByIdUseCase,
    this._saveBookUseCase,
    this._deleteBookUseCase,
  ) : super(const BookDetailsPageState.loading());

  Future<void> init(int? bookId) async {
    if (bookId != null) {
      _currentBook = await _getBookByIdUseCase(bookId);
    }
    emit(BookDetailsPageState.loadBook(_currentBook));
  }

  Future<void> saveBook({
    required String title,
    required String author,
    required int publicationDate,
    required bool readAlready,
    required String about,
  }) async {
    final bookToSave = _currentBook != null
        ? _currentBook!.copyWith(
            title: title,
            author: author,
            publicationDate: publicationDate,
            readAlready: readAlready,
            about: about,
          )
        : Book(
            id: Random().nextInt(1000),
            title: title,
            author: author,
            publicationDate: publicationDate,
            readAlready: readAlready,
            about: about,
          );

    await _saveBookUseCase(bookToSave);
    emit(const BookDetailsPageState.saveBook());
  }

  Future<void> deleteBook(int id) async {
    await _deleteBookUseCase(id);
    emit(const BookDetailsPageState.deleteBook());
  }
}
