// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'kanban_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$KanbanState {
  List<KColumn> get columns;
  Status get status;

  KanbanState copyWith({List<KColumn> columns, Status status});
}

class _$KanbanStateTearOff {
  const _$KanbanStateTearOff();

  _KanbanState call({List<KColumn> columns = const [], Status status}) {
    return _KanbanState(
      columns: columns,
      status: status,
    );
  }
}

const $KanbanState = _$KanbanStateTearOff();

class _$_KanbanState implements _KanbanState {
  const _$_KanbanState({this.columns = const [], this.status});

  @JsonKey(defaultValue: const [])
  @override
  final List<KColumn> columns;
  @override
  final Status status;

  @override
  String toString() {
    return 'KanbanState(columns: $columns, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KanbanState &&
            (identical(other.columns, columns) ||
                const DeepCollectionEquality()
                    .equals(other.columns, columns)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(columns) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$_KanbanState copyWith({
    Object columns = freezed,
    Object status = freezed,
  }) {
    return _$_KanbanState(
      columns: columns == freezed ? this.columns : columns as List<KColumn>,
      status: status == freezed ? this.status : status as Status,
    );
  }
}

abstract class _KanbanState implements KanbanState {
  const factory _KanbanState({List<KColumn> columns, Status status}) =
      _$_KanbanState;

  @override
  List<KColumn> get columns;
  @override
  Status get status;

  @override
  _KanbanState copyWith({List<KColumn> columns, Status status});
}
