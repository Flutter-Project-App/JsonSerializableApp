// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PictureModel _$PictureModelFromJson(Map<String, dynamic> json) {
  return PictureModel(
    json['large'] as String,
    json['medium'] as String,
    json['thumbnail'] as String,
  );
}

Map<String, dynamic> _$PictureModelToJson(PictureModel instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
