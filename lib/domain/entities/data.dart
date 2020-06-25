import 'package:freezed_annotation/freezed_annotation.dart';

import 'task.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
abstract class KData with _$KData {
  const factory KData({
    @required int from,
    @required KTask task,
  }) = _KData;

  factory KData.fromJson(Map<String, dynamic> json) => _$KDataFromJson(json);
}
