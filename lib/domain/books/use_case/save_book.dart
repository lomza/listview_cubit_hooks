import 'package:injectable/injectable.dart';
import 'package:listview_cubit_hooks/domain/books/model/book.dart';
import 'package:listview_cubit_hooks/domain/books/repository/books_repository.dart';

@injectable
class SaveBookUseCase {
  SaveBookUseCase(this._repository);

  final BooksRepository _repository;

  Future<void> call(Book book) => _repository.saveBook(book);
}
