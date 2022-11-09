// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$KanbanStore on _KanbanStore, Store {
  Computed<ObservableList<column.KColumn>>? _$itemsComputed;

  @override
  ObservableList<column.KColumn> get items => (_$itemsComputed ??=
          Computed<ObservableList<column.KColumn>>(() => super.items,
              name: '_KanbanStore.items'))
      .value;

  late final _$_columnsAtom =
      Atom(name: '_KanbanStore._columns', context: context);

  @override
  ObservableList<KColumn> get _columns {
    _$_columnsAtom.reportRead();
    return super._columns;
  }

  @override
  set _columns(ObservableList<KColumn> value) {
    _$_columnsAtom.reportWrite(value, super._columns, () {
      super._columns = value;
    });
  }

  late final _$_KanbanStoreActionController =
      ActionController(name: '_KanbanStore', context: context);

  @override
  void addColumn({required String title}) {
    final _$actionInfo = _$_KanbanStoreActionController.startAction(
        name: '_KanbanStore.addColumn');
    try {
      return super.addColumn(title: title);
    } finally {
      _$_KanbanStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTask({required int column, required String title}) {
    final _$actionInfo = _$_KanbanStoreActionController.startAction(
        name: '_KanbanStore.addTask');
    try {
      return super.addTask(column: column, title: title);
    } finally {
      _$_KanbanStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void arrangeTask({required int column, required int from, required int to}) {
    final _$actionInfo = _$_KanbanStoreActionController.startAction(
        name: '_KanbanStore.arrangeTask');
    try {
      return super.arrangeTask(column: column, from: from, to: to);
    } finally {
      _$_KanbanStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteTask({required int column, required KTask task}) {
    final _$actionInfo = _$_KanbanStoreActionController.startAction(
        name: '_KanbanStore.deleteTask');
    try {
      return super.deleteTask(column: column, task: task);
    } finally {
      _$_KanbanStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void moveTask({required int column, required KData data}) {
    final _$actionInfo = _$_KanbanStoreActionController.startAction(
        name: '_KanbanStore.moveTask');
    try {
      return super.moveTask(column: column, data: data);
    } finally {
      _$_KanbanStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items}
    ''';
  }
}
