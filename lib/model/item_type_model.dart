import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_type_model.g.dart';

@JsonSerializable()
class ItemType {
  String? id;
  String? type;
  String? key;
  String? value;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  ItemType(
      {this.id,
      this.type,
      this.key,
      this.value,
      this.createdAt,
      this.updatedAt});

  factory ItemType.fromJson(Map<String, dynamic> json) =>
      _$ItemTypeFromJson(json);

  Map<String, dynamic> toJson() => _$ItemTypeToJson(this);
}
