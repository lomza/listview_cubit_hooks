// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksListPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Book> books) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Book> books)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Book> books)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksListPageLoading value) loading,
    required TResult Function(BooksListPageEmpty value) empty,
    required TResult Function(BooksListPageSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksListPageLoading value)? loading,
    TResult? Function(BooksListPageEmpty value)? empty,
    TResult? Function(BooksListPageSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksListPageLoading value)? loading,
    TResult Function(BooksListPageEmpty value)? empty,
    TResult Function(BooksListPageSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksListPageStateCopyWith<$Res> {
  factory $BooksListPageStateCopyWith(
          BooksListPageState value, $Res Function(BooksListPageState) then) =
      _$BooksListPageStateCopyWithImpl<$Res, BooksListPageState>;
}

/// @nodoc
class _$BooksListPageStateCopyWithImpl<$Res, $Val extends BooksListPageState>
    implements $BooksListPageStateCopyWith<$Res> {
  _$BooksListPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BooksListPageLoadingCopyWith<$Res> {
  factory _$$BooksListPageLoadingCopyWith(_$BooksListPageLoading value,
          $Res Function(_$BooksListPageLoading) then) =
      __$$BooksListPageLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BooksListPageLoadingCopyWithImpl<$Res>
    extends _$BooksListPageStateCopyWithImpl<$Res, _$BooksListPageLoading>
    implements _$$BooksListPageLoadingCopyWith<$Res> {
  __$$BooksListPageLoadingCopyWithImpl(_$BooksListPageLoading _value,
      $Res Function(_$BooksListPageLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BooksListPageLoading implements BooksListPageLoading {
  const _$BooksListPageLoading();

  @override
  String toString() {
    return 'BooksListPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BooksListPageLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Book> books) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Book> books)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Book> books)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksListPageLoading value) loading,
    required TResult Function(BooksListPageEmpty value) empty,
    required TResult Function(BooksListPageSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksListPageLoading value)? loading,
    TResult? Function(BooksListPageEmpty value)? empty,
    TResult? Function(BooksListPageSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksListPageLoading value)? loading,
    TResult Function(BooksListPageEmpty value)? empty,
    TResult Function(BooksListPageSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BooksListPageLoading implements BooksListPageState {
  const factory BooksListPageLoading() = _$BooksListPageLoading;
}

/// @nodoc
abstract class _$$BooksListPageEmptyCopyWith<$Res> {
  factory _$$BooksListPageEmptyCopyWith(_$BooksListPageEmpty value,
          $Res Function(_$BooksListPageEmpty) then) =
      __$$BooksListPageEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BooksListPageEmptyCopyWithImpl<$Res>
    extends _$BooksListPageStateCopyWithImpl<$Res, _$BooksListPageEmpty>
    implements _$$BooksListPageEmptyCopyWith<$Res> {
  __$$BooksListPageEmptyCopyWithImpl(
      _$BooksListPageEmpty _value, $Res Function(_$BooksListPageEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BooksListPageEmpty implements BooksListPageEmpty {
  const _$BooksListPageEmpty();

  @override
  String toString() {
    return 'BooksListPageState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BooksListPageEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Book> books) success,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Book> books)? success,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Book> books)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksListPageLoading value) loading,
    required TResult Function(BooksListPageEmpty value) empty,
    required TResult Function(BooksListPageSuccess value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksListPageLoading value)? loading,
    TResult? Function(BooksListPageEmpty value)? empty,
    TResult? Function(BooksListPageSuccess value)? success,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksListPageLoading value)? loading,
    TResult Function(BooksListPageEmpty value)? empty,
    TResult Function(BooksListPageSuccess value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class BooksListPageEmpty implements BooksListPageState {
  const factory BooksListPageEmpty() = _$BooksListPageEmpty;
}

/// @nodoc
abstract class _$$BooksListPageSuccessCopyWith<$Res> {
  factory _$$BooksListPageSuccessCopyWith(_$BooksListPageSuccess value,
          $Res Function(_$BooksListPageSuccess) then) =
      __$$BooksListPageSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Book> books});
}

/// @nodoc
class __$$BooksListPageSuccessCopyWithImpl<$Res>
    extends _$BooksListPageStateCopyWithImpl<$Res, _$BooksListPageSuccess>
    implements _$$BooksListPageSuccessCopyWith<$Res> {
  __$$BooksListPageSuccessCopyWithImpl(_$BooksListPageSuccess _value,
      $Res Function(_$BooksListPageSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$BooksListPageSuccess(
      null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$BooksListPageSuccess implements BooksListPageSuccess {
  const _$BooksListPageSuccess(final List<Book> books) : _books = books;

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'BooksListPageState.success(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksListPageSuccess &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksListPageSuccessCopyWith<_$BooksListPageSuccess> get copyWith =>
      __$$BooksListPageSuccessCopyWithImpl<_$BooksListPageSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Book> books) success,
  }) {
    return success(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Book> books)? success,
  }) {
    return success?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Book> books)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksListPageLoading value) loading,
    required TResult Function(BooksListPageEmpty value) empty,
    required TResult Function(BooksListPageSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksListPageLoading value)? loading,
    TResult? Function(BooksListPageEmpty value)? empty,
    TResult? Function(BooksListPageSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksListPageLoading value)? loading,
    TResult Function(BooksListPageEmpty value)? empty,
    TResult Function(BooksListPageSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BooksListPageSuccess implements BooksListPageState {
  const factory BooksListPageSuccess(final List<Book> books) =
      _$BooksListPageSuccess;

  List<Book> get books;
  @JsonKey(ignore: true)
  _$$BooksListPageSuccessCopyWith<_$BooksListPageSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
