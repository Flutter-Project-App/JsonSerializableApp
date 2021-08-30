import 'package:json_annotation/json_annotation.dart';
part 'picture_model.g.dart';

@JsonSerializable()
class PictureModel {
  String large;
  String medium;
  String thumbnail;

  PictureModel(this.large, this.medium, this.thumbnail);

  factory PictureModel.fromJson(Map<String, dynamic> json) => _$PictureModelFromJson(json);
  Map<String, dynamic> toJson() => _$PictureModelToJson(this);
}