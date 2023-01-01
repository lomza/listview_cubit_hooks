import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:listview_cubit_hooks/data/books/model/db_book.dart';
import 'package:listview_cubit_hooks/domain/books/model/book.dart';

const String _bookBox = 'book';

@Singleton()
class AppDatabase {
  AppDatabase._constructor();

  static final AppDatabase _instance = AppDatabase._constructor();

  factory AppDatabase() => _instance;

  late Box<BookDb> _booksBox;

  Future<void> initialize() async {
    await Hive.initFlutter();
    Hive.registerAdapter<BookDb>(BookDbAdapter());
    _booksBox = await Hive.openBox<BookDb>(_bookBox);
  }

  Future<void> saveBook(Book book) async {
    await _booksBox.put(
        book.id,
        BookDb(
          book.id,
          book.title,
          book.author,
          book.publicationDate,
          book.about,
          book.readAlready,
        ));
  }

  Future<void> deleteBook(int id) async {
    await _booksBox.delete(id);
  }

  Future<void> deleteAllBooks() async {
    await _booksBox.clear();
  }

  List<Book> getAllBooks() {
    return _booksBox.values.map(_bookFromDb).toList();
  }

  Book? getBookById(int id) {
    final bookDb = _booksBox.get(id);
    if (bookDb != null) {
      return _bookFromDb(bookDb);
    }

    return null;
  }

  Book _bookFromDb(BookDb bookDb) => Book(
        id: bookDb.id,
        title: bookDb.title,
        author: bookDb.author,
        about: bookDb.about,
        publicationDate: bookDb.publicationDate,
        readAlready: bookDb.readAlready,
      );
}
