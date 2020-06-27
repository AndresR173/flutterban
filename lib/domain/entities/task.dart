import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
abstract class KTask with _$KTask {
  const factory KTask({
    String title,
  }) = _KTask;

  factory KTask.fromJson(Map<String, dynamic> json) => _$KTaskFromJson(json);
}
