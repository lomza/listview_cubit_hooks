import 'package:injectable/injectable.dart';
import 'package:listview_cubit_hooks/data/books/database/app_db.dart';
import 'package:listview_cubit_hooks/domain/books/model/book.dart';
import 'package:listview_cubit_hooks/domain/books/repository/books_repository.dart';

@Injectable(as: BooksRepository)
class DbBooksRepository implements BooksRepository {
  final AppDatabase _appDatabase;

  DbBooksRepository(this._appDatabase);

  @override
  Future<void> deleteBook(int id) async {
    await _appDatabase.deleteBook(id);
  }

  @override
  Future<void> deleteAllBooks() async {
    await _appDatabase.deleteAllBooks();
  }

  @override
  List<Book> getAllBooks() {
    return _appDatabase.getAllBooks();
  }

  @override
  Future<Book?> getBookById(int id) async {
    return _appDatabase.getBookById(id);
  }

  @override
  Future<void> saveBook(Book book) => _appDatabase.saveBook(book);
}
