// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:listview_cubit_hooks/data/books/database/app_db.dart' as _i3;
import 'package:listview_cubit_hooks/data/books/repository/db_books_repository.dart'
    as _i5;
import 'package:listview_cubit_hooks/domain/books/repository/books_repository.dart'
    as _i4;
import 'package:listview_cubit_hooks/domain/books/use_case/delete_all_books.dart'
    as _i6;
import 'package:listview_cubit_hooks/domain/books/use_case/delete_book.dart'
    as _i7;
import 'package:listview_cubit_hooks/domain/books/use_case/get_all_books.dart'
    as _i8;
import 'package:listview_cubit_hooks/domain/books/use_case/get_book_by_id.dart'
    as _i9;
import 'package:listview_cubit_hooks/domain/books/use_case/save_book.dart'
    as _i10;
import 'package:listview_cubit_hooks/presentation/books/details/book_details_cubit.dart'
    as _i11;
import 'package:listview_cubit_hooks/presentation/books/list/books_list_cubit.dart'
    as _i12;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppDatabase>(_i3.AppDatabase());
    gh.factory<_i4.BooksRepository>(
        () => _i5.DbBooksRepository(gh<_i3.AppDatabase>()));
    gh.factory<_i6.DeleteAllBooksUseCase>(
        () => _i6.DeleteAllBooksUseCase(gh<_i4.BooksRepository>()));
    gh.factory<_i7.DeleteBookUseCase>(
        () => _i7.DeleteBookUseCase(gh<_i4.BooksRepository>()));
    gh.factory<_i8.GetAllBooksUseCase>(
        () => _i8.GetAllBooksUseCase(gh<_i4.BooksRepository>()));
    gh.factory<_i9.GetBookByIdUseCase>(
        () => _i9.GetBookByIdUseCase(gh<_i4.BooksRepository>()));
    gh.factory<_i10.SaveBookUseCase>(
        () => _i10.SaveBookUseCase(gh<_i4.BooksRepository>()));
    gh.factory<_i11.BookDetailsCubit>(() => _i11.BookDetailsCubit(
          gh<_i9.GetBookByIdUseCase>(),
          gh<_i10.SaveBookUseCase>(),
          gh<_i7.DeleteBookUseCase>(),
        ));
    gh.factory<_i12.BooksListCubit>(() => _i12.BooksListCubit(
          gh<_i8.GetAllBooksUseCase>(),
          gh<_i10.SaveBookUseCase>(),
          gh<_i6.DeleteAllBooksUseCase>(),
        ));
    return this;
  }
}
