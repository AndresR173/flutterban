// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'column.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KColumn {
  String get title => throw _privateConstructorUsedError;
  List<KTask> get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KColumnCopyWith<KColumn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KColumnCopyWith<$Res> {
  factory $KColumnCopyWith(KColumn value, $Res Function(KColumn) then) =
      _$KColumnCopyWithImpl<$Res, KColumn>;
  @useResult
  $Res call({String title, List<KTask> children});
}

/// @nodoc
class _$KColumnCopyWithImpl<$Res, $Val extends KColumn>
    implements $KColumnCopyWith<$Res> {
  _$KColumnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<KTask>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KColumnCopyWith<$Res> implements $KColumnCopyWith<$Res> {
  factory _$$_KColumnCopyWith(
          _$_KColumn value, $Res Function(_$_KColumn) then) =
      __$$_KColumnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<KTask> children});
}

/// @nodoc
class __$$_KColumnCopyWithImpl<$Res>
    extends _$KColumnCopyWithImpl<$Res, _$_KColumn>
    implements _$$_KColumnCopyWith<$Res> {
  __$$_KColumnCopyWithImpl(_$_KColumn _value, $Res Function(_$_KColumn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? children = null,
  }) {
    return _then(_$_KColumn(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<KTask>,
    ));
  }
}

/// @nodoc

class _$_KColumn implements _KColumn {
  const _$_KColumn({required this.title, required this.children});

  @override
  final String title;
  @override
  final List<KTask> children;

  @override
  String toString() {
    return 'KColumn(title: $title, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KColumn &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KColumnCopyWith<_$_KColumn> get copyWith =>
      __$$_KColumnCopyWithImpl<_$_KColumn>(this, _$identity);
}

abstract class _KColumn implements KColumn {
  const factory _KColumn(
      {required final String title,
      required final List<KTask> children}) = _$_KColumn;

  @override
  String get title;
  @override
  List<KTask> get children;
  @override
  @JsonKey(ignore: true)
  _$$_KColumnCopyWith<_$_KColumn> get copyWith =>
      throw _privateConstructorUsedError;
}
