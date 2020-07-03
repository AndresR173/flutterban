// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'column.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

KColumn _$KColumnFromJson(Map<String, dynamic> json) {
  return _KColumn.fromJson(json);
}

mixin _$KColumn {
  String get title;
  List<KTask> get children;

  KColumn copyWith({String title, List<KTask> children});

  Map<String, dynamic> toJson();
}

class _$KColumnTearOff {
  const _$KColumnTearOff();

  _KColumn call({String title, List<KTask> children}) {
    return _KColumn(
      title: title,
      children: children,
    );
  }
}

const $KColumn = _$KColumnTearOff();

@JsonSerializable()
class _$_KColumn implements _KColumn {
  const _$_KColumn({this.title, this.children});

  factory _$_KColumn.fromJson(Map<String, dynamic> json) =>
      _$_$_KColumnFromJson(json);

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
        (other is _KColumn &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(children);

  @override
  _$_KColumn copyWith({
    Object title = freezed,
    Object children = freezed,
  }) {
    return _$_KColumn(
      title: title == freezed ? this.title : title as String,
      children: children == freezed ? this.children : children as List<KTask>,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_KColumnToJson(this);
  }
}

abstract class _KColumn implements KColumn {
  const factory _KColumn({String title, List<KTask> children}) = _$_KColumn;

  factory _KColumn.fromJson(Map<String, dynamic> json) = _$_KColumn.fromJson;

  @override
  String get title;
  @override
  List<KTask> get children;

  @override
  _KColumn copyWith({String title, List<KTask> children});
}
