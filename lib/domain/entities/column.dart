import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';

import 'task.dart';

part 'column.freezed.dart';
part 'column.g.dart';

@freezed
abstract class KColumn with _$KColumn, Store {
  const factory KColumn({
    @observable String title,
    @observable List<KTask> children,
  }) = _KColumn;

  factory KColumn.fromJson(Map<String, dynamic> json) =>
      _$KColumnFromJson(json);
}
