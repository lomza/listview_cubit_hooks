import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:listview_cubit_hooks/core/app_router.gr.dart';
import 'package:listview_cubit_hooks/core/cubit_hooks.dart';
import 'package:listview_cubit_hooks/core/ui/app_dimensions.dart';
import 'package:listview_cubit_hooks/core/ui/app_typography.dart';
import 'package:listview_cubit_hooks/generated/locale_keys.g.dart';
import 'package:listview_cubit_hooks/presentation/books/list/books_list_cubit.dart';
import 'package:listview_cubit_hooks/presentation/books/list/books_list_item.dart';

class BooksListPage extends HookWidget {
  const BooksListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<BooksListCubit>();
    final state = useCubitBuilder<BooksListCubit, BooksListPageState>(cubit);

    useEffect(
      () {
        cubit.init();
        return null;
      },
      [cubit],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.books_list_title.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever_rounded),
            tooltip: LocaleKeys.books_list_delete_all.tr(),
            onPressed: () {
              _showDeleteConfirmationDialog(context, () => cubit.deleteAll());
            },
          ),
        ],
      ),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        empty: () => Center(
          child: Text(
            LocaleKeys.books_list_empty.tr(),
            style: AppTypography.h318Bold,
            textAlign: TextAlign.center,
          ),
        ),
        success: (books) {
          return ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              height: AppDimensions.s,
              thickness: 0.5,
            ),
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];
              return BooksListItem(
                title: book.title,
                author: book.author,
                isRead: book.readAlready,
                bookReadChanged: (newValue) async {
                  await cubit.markBookAsReadOrUnread(book, newValue);
                },
                onItemTap: () async {
                  final result = await context.router.push<bool>(BookDetailsRoute(bookId: book.id));
                  if (result == true) {
                    await cubit.getAllBooks();
                  }
                },
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await context.router.push<bool>(BookDetailsRoute());
          if (result == true) {
            await cubit.getAllBooks();
          }
        },
        tooltip: LocaleKeys.books_list_add.tr(),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context, Function action) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(LocaleKeys.books_list_delete_all_dialog_message.tr()),
            actions: <Widget>[
              TextButton(
                onPressed: () async {
                  action();
                  Navigator.pop(context);
                },
                child: Text(LocaleKeys.books_list_delete_all_dialog_yes.tr()),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(LocaleKeys.books_list_delete_all_dialog_no.tr()),
              ),
            ],
          );
        });
  }
}
