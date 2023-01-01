import 'package:injectable/injectable.dart';
import 'package:listview_cubit_hooks/domain/books/repository/books_repository.dart';

@injectable
class DeleteAllBooksUseCase {
  DeleteAllBooksUseCase(this._repository);

  final BooksRepository _repository;

  Future<void> call() => _repository.deleteAllBooks();
}
