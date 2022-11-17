import 'package:freezed_annotation/freezed_annotation.dart';

import 'task.dart';

part 'column.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class KColumn with _$KColumn {
  const factory KColumn({
    required String title,
    required List<KTask> children,
  }) = _KColumn;
}
