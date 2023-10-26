// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      mmName: json['mm_name'] as String?,
      isActive: json['is_active'] as int?,
      mainServiceId: json['main_service_id'] as String?,
      coverImage: json['cover_image'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'mm_name': instance.mmName,
      'is_active': instance.isActive,
      'main_service_id': instance.mainServiceId,
      'cover_image': instance.coverImage,
    };
