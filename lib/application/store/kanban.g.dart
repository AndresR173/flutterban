// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Kanban on _Kanban, Store {
  final _$_columnsAtom = Atom(name: '_Kanban._columns');

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

  final _$_KanbanActionController = ActionController(name: '_Kanban');

  @override
  void addColumn({@required String title}) {
    final _$actionInfo =
        _$_KanbanActionController.startAction(name: '_Kanban.addColumn');
    try {
      return super.addColumn(title: title);
    } finally {
      _$_KanbanActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTask({@required int column, @required String title}) {
    final _$actionInfo =
        _$_KanbanActionController.startAction(name: '_Kanban.addTask');
    try {
      return super.addTask(column: column, title: title);
    } finally {
      _$_KanbanActionController.endAction(_$actionInfo);
    }
  }

  @override
  void arrangeTask(
      {@required int column, @required int from, @required int to}) {
    final _$actionInfo =
        _$_KanbanActionController.startAction(name: '_Kanban.arrangeTask');
    try {
      return super.arrangeTask(column: column, from: from, to: to);
    } finally {
      _$_KanbanActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteTask({@required int column, @required KTask task}) {
    final _$actionInfo =
        _$_KanbanActionController.startAction(name: '_Kanban.deleteTask');
    try {
      return super.deleteTask(column: column, task: task);
    } finally {
      _$_KanbanActionController.endAction(_$actionInfo);
    }
  }

  @override
  void moveTask({@required int column, @required KData data}) {
    final _$actionInfo =
        _$_KanbanActionController.startAction(name: '_Kanban.moveTask');
    try {
      return super.moveTask(column: column, data: data);
    } finally {
      _$_KanbanActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
