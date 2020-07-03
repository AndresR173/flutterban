// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'column.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KColumn _$_$_KColumnFromJson(Map<String, dynamic> json) {
  return _$_KColumn(
    title: json['title'] as String,
    children: (json['children'] as List)
        ?.map(
            (e) => e == null ? null : KTask.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_KColumnToJson(_$_KColumn instance) =>
    <String, dynamic>{
      'title': instance.title,
      'children': instance.children,
    };
