import 'package:injectable/injectable.dart';
import 'package:listview_cubit_hooks/domain/books/model/book.dart';
import 'package:listview_cubit_hooks/domain/books/repository/books_repository.dart';

@injectable
class GetAllBooksUseCase {
  GetAllBooksUseCase(this._repository);

  final BooksRepository _repository;

  List<Book> call() => _repository.getAllBooks();
}
