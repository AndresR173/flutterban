import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
abstract class KTask with _$KTask, Store {
  const factory KTask({
    @observable String title,
  }) = _KTask;

  factory KTask.fromJson(Map<String, dynamic> json) => _$KTaskFromJson(json);
}
