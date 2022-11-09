import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';

import 'task.dart';

part 'mobx_column.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class KColumn with _$KColumn {
  const factory KColumn({
    required String title,
    required ObservableList<KTask> children,
  }) = _KColumn;
}
