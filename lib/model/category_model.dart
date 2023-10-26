import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class Category {
  String? id;
  String? code;
  String? name;
  @JsonKey(name: 'mm_name')
  String? mmName;
  @JsonKey(name: 'is_active')
  int? isActive;
  @JsonKey(name: 'main_service_id')
  String? mainServiceId;
  @JsonKey(name: 'cover_image')
  String? coverImage;

  Category(
      {this.id,
      this.code,
      this.name,
      this.mmName,
      this.isActive,
      this.mainServiceId,
      this.coverImage});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
