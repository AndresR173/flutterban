import 'package:freezed_annotation/freezed_annotation.dart';

import 'task.dart';

part 'column.freezed.dart';
part 'column.g.dart';

@freezed
abstract class KColumn with _$KColumn {
  const factory KColumn({
    String title,
    List<KTask> children,
  }) = _KColumn;

  factory KColumn.fromJson(Map<String, dynamic> json) =>
      _$KColumnFromJson(json);
}
