// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameModel _$NameModelFromJson(Map<String, dynamic> json) {
  return NameModel(
    json['title'] as String,
    json['first'] as String,
    json['last'] as String,
  );
}

Map<String, dynamic> _$NameModelToJson(NameModel instance) => <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };
