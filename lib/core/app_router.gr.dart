// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../presentation/books/details/book_details_page.dart' as _i2;
import '../presentation/books/list/books_list_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    BooksListRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BooksListPage(),
      );
    },
    BookDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<BookDetailsRouteArgs>(
          orElse: () => const BookDetailsRouteArgs());
      return _i3.MaterialPageX<bool>(
        routeData: routeData,
        child: _i2.BookDetailsPage(
          key: args.key,
          bookId: args.bookId,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          BooksListRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          BookDetailsRoute.name,
          path: '/book-details-page',
        ),
      ];
}

/// generated route for
/// [_i1.BooksListPage]
class BooksListRoute extends _i3.PageRouteInfo<void> {
  const BooksListRoute()
      : super(
          BooksListRoute.name,
          path: '/',
        );

  static const String name = 'BooksListRoute';
}

/// generated route for
/// [_i2.BookDetailsPage]
class BookDetailsRoute extends _i3.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({
    _i4.Key? key,
    int? bookId,
  }) : super(
          BookDetailsRoute.name,
          path: '/book-details-page',
          args: BookDetailsRouteArgs(
            key: key,
            bookId: bookId,
          ),
        );

  static const String name = 'BookDetailsRoute';
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({
    this.key,
    this.bookId,
  });

  final _i4.Key? key;

  final int? bookId;

  @override
  String toString() {
    return 'BookDetailsRouteArgs{key: $key, bookId: $bookId}';
  }
}
