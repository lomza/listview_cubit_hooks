import 'package:injectable/injectable.dart';
import 'package:listview_cubit_hooks/domain/books/repository/books_repository.dart';

@injectable
class DeleteBookUseCase {
  DeleteBookUseCase(this._repository);

  final BooksRepository _repository;

  Future<void> call(int id) => _repository.deleteBook(id);
}
