import 'package:injectable/injectable.dart';
import 'package:listview_cubit_hooks/domain/books/model/book.dart';
import 'package:listview_cubit_hooks/domain/books/repository/books_repository.dart';

@injectable
class GetBookByIdUseCase {
  GetBookByIdUseCase(this._repository);

  final BooksRepository _repository;

  Future<Book?> call(int id) => _repository.getBookById(id);
}
