// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorModel _$VendorModelFromJson(Map<String, dynamic> json) => VendorModel(
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : VendorInfoModel.fromJson(json['data'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      highlightedItems:
          (json['highlighted_items'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      itemTypes: (json['item_types'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      itemTypeLists: (json['item_type_lists'] as List<dynamic>?)
          ?.map((e) => ItemType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VendorModelToJson(VendorModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'categories': instance.categories,
      'highlighted_items': instance.highlightedItems,
      'item_types': instance.itemTypes,
      'item_type_lists': instance.itemTypeLists,
    };
