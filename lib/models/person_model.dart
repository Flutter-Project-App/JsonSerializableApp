import 'package:json_annotation/json_annotation.dart';

import 'name_model.dart';
import 'picture_model.dart';

part 'person_model.g.dart';

@JsonSerializable()
class PersonModel {
  NameModel? name;
  String? phone;
  PictureModel? picture;

  PersonModel({this.name, this.phone, this.picture});

  factory PersonModel.fromJson(Map<String, dynamic> json) => _$PersonModelFromJson(json);
  Map<String, dynamic> toJson() => _$PersonModelToJson(this);
}