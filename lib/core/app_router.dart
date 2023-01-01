import 'package:auto_route/auto_route.dart';
import 'package:listview_cubit_hooks/presentation/books/details/book_details_page.dart';
import 'package:listview_cubit_hooks/presentation/books/list/books_list_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: BooksListPage, initial: true),
    AutoRoute<bool>(page: BookDetailsPage),
  ],
)
class $AppRouter {}
