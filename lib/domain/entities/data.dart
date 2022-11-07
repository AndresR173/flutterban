import 'package:freezed_annotation/freezed_annotation.dart';

import 'task.dart';

part 'data.freezed.dart';

@freezed
class KData with _$KData {
  const factory KData({
    required int from,
    required KTask task,
  }) = _KData;
}
