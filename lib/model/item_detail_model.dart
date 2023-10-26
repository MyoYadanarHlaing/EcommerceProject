import 'package:ecommerce_project/model/item_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_detail_model.g.dart';

@JsonSerializable()
class ItemDetailModel {
  bool? status;
  String? message;
  ItemModel? data;
  @JsonKey(name: 'related_items')
  List<ItemModel>? relatedItems;

  ItemDetailModel({
    this.status,
    this.message,
    this.data,
    this.relatedItems,
  });

  factory ItemDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemDetailModelToJson(this);
}
