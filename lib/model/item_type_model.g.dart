// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemType _$ItemTypeFromJson(Map<String, dynamic> json) => ItemType(
      id: json['id'] as String?,
      type: json['type'] as String?,
      key: json['key'] as String?,
      value: json['value'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ItemTypeToJson(ItemType instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'key': instance.key,
      'value': instance.value,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
