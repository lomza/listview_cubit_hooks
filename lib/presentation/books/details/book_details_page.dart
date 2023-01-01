import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:listview_cubit_hooks/core/cubit_hooks.dart';
import 'package:listview_cubit_hooks/core/ui/app_dimensions.dart';
import 'package:listview_cubit_hooks/core/ui/app_textedit.dart';
import 'package:listview_cubit_hooks/generated/locale_keys.g.dart';
import 'package:listview_cubit_hooks/presentation/books/details/book_details_cubit.dart';

class BookDetailsPage extends HookWidget {
  BookDetailsPage({
    Key? key,
    this.bookId,
  }) : super(key: key);

  final int? bookId;
  final _bookFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<BookDetailsCubit>();
    final state = useCubitBuilder<BookDetailsCubit, BookDetailsPageState>(cubit);

    useEffect(
      () {
        cubit.init(bookId);
        return null;
      },
      [cubit],
    );

    useCubitListener<BookDetailsCubit, BookDetailsPageState>(cubit, (cubit, state, context) {
      state.maybeWhen(
        saveBook: () => context.router.pop<bool>(true),
        deleteBook: () => context.router.pop<bool>(true),
        orElse: () => null,
      );
    }, listenWhen: (state) => (state is BookDetailsPageSaveBook || state is BookDetailsPageDeleteBook));

    return state.maybeWhen(
      orElse: () => Container(),
      loading: () => const Center(child: CircularProgressIndicator()),
      loadBook: (book) {
        final titleTextController = useTextEditingController(text: book?.title ?? '');
        final authorTextController = useTextEditingController(text: book?.author ?? '');
        final publishDateTextController = useTextEditingController(text: book?.publicationDate.toString() ?? '');
        final aboutTextController = useTextEditingController(text: book?.about ?? '');
        var readAlready = useState(book?.readAlready ?? false);

        return Scaffold(
          appBar: AppBar(
            title:
                Text(book != null ? LocaleKeys.books_details_title_edit.tr() : LocaleKeys.books_details_title_add.tr()),
            actions: [
              if (book != null)
                IconButton(
                  icon: const Icon(Icons.delete_forever_rounded),
                  tooltip: LocaleKeys.books_details_delete.tr(),
                  onPressed: () async => await cubit.deleteBook(book.id),
                ),
              IconButton(
                icon: const Icon(Icons.save_rounded),
                tooltip: LocaleKeys.books_details_save.tr(),
                onPressed: () async {
                  if (_bookFormKey.currentState!.validate()) {
                    await cubit.saveBook(
                      title: titleTextController.text,
                      author: authorTextController.text,
                      publicationDate: int.parse(publishDateTextController.text),
                      readAlready: readAlready.value,
                      about: aboutTextController.text,
                    );
                  }
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppDimensions.l),
              child: Form(
                key: _bookFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppTextEdit(
                      labelText: LocaleKeys.books_details_book_title.tr(),
                      textInputType: TextInputType.name,
                      textEditingController: titleTextController,
                      validator: (value) => (value == null || value.isEmpty) ? '' : null,
                    ),
                    const SizedBox(height: AppDimensions.l),
                    AppTextEdit(
                      labelText: LocaleKeys.books_details_author.tr(),
                      textEditingController: authorTextController,
                      textInputType: TextInputType.name,
                      validator: (value) => (value == null || value.isEmpty) ? '' : null,
                    ),
                    const SizedBox(height: AppDimensions.l),
                    AppTextEdit(
                      labelText: LocaleKeys.books_details_publish_date.tr(),
                      textInputType: TextInputType.number,
                      textEditingController: publishDateTextController,
                      validator: (value) => (value == null || value.isEmpty || int.tryParse(value) == null) ? '' : null,
                    ),
                    const SizedBox(height: AppDimensions.l),
                    Row(
                      children: [
                        Text(LocaleKeys.books_details_mark_as_read.tr()),
                        const SizedBox(width: AppDimensions.l),
                        Switch(
                            value: readAlready.value,
                            onChanged: (newValue) {
                              readAlready.value = newValue;
                            }),
                      ],
                    ),
                    const SizedBox(height: AppDimensions.l),
                    AppTextEdit(
                      labelText: LocaleKeys.books_details_about.tr(),
                      textInputType: TextInputType.multiline,
                      lines: 5,
                      textEditingController: aboutTextController,
                      validator: (value) => (value == null || value.isEmpty) ? '' : null,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
