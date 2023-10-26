import 'package:ecommerce_project/model/item_model.dart';
import 'package:ecommerce_project/model/item_type_model.dart';
import 'package:ecommerce_project/model/vendor_info_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'category_model.dart';

part 'vendor_model.g.dart';

@JsonSerializable()
class VendorModel {
  bool? status;
  VendorInfoModel? data;
  List<Category>? categories;
  @JsonKey(name: 'highlighted_items')
  Map<String,List<ItemModel>>? highlightedItems;
  @JsonKey(name: 'item_types')
  Map<String,List<ItemModel>>? itemTypes;
  @JsonKey(name: 'item_type_lists')
  List<ItemType>? itemTypeLists;

  VendorModel(
      {this.status,
      this.data,
      this.categories,
      this.highlightedItems,
      this.itemTypes,
      this.itemTypeLists});

  factory VendorModel.fromJson(Map<String, dynamic> json) =>
      _$VendorModelFromJson(json);

  Map<String, dynamic> toJson() => _$VendorModelToJson(this);
}
