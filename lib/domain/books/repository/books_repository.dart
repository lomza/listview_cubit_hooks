import 'package:listview_cubit_hooks/domain/books/model/book.dart';

abstract class BooksRepository {
  List<Book> getAllBooks();

  Future<void> deleteBook(int id);

  Future<void> deleteAllBooks();

  Future<void> saveBook(Book book);

  Future<Book?> getBookById(int id);
}
