// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorInfoModel _$VendorInfoModelFromJson(Map<String, dynamic> json) =>
    VendorInfoModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      code: json['code'] as String?,
      mobile: json['mobile'] as String?,
      mainServiceId: json['main_service_id'] as String?,
      mainService: json['main_service'] == null
          ? null
          : MainService.fromJson(json['main_service'] as Map<String, dynamic>),
      km: (json['km'] as num?)?.toDouble(),
      address: json['address'] as String?,
      orderOpeningTime: json['order_opening_time'] as String?,
      orderClosingTime: json['order_closing_time'] as String?,
      isActive: json['is_active'] as int?,
      isClosed: json['is_closed'] as int?,
      coverImage: json['cover_image'] as String?,
      logoImage: json['logo_image'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
    );

Map<String, dynamic> _$VendorInfoModelToJson(VendorInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'code': instance.code,
      'mobile': instance.mobile,
      'main_service_id': instance.mainServiceId,
      'main_service': instance.mainService,
      'km': instance.km,
      'address': instance.address,
      'order_opening_time': instance.orderOpeningTime,
      'order_closing_time': instance.orderClosingTime,
      'is_active': instance.isActive,
      'is_closed': instance.isClosed,
      'cover_image': instance.coverImage,
      'logo_image': instance.logoImage,
      'lat': instance.lat,
      'lng': instance.lng,
    };

MainService _$MainServiceFromJson(Map<String, dynamic> json) => MainService(
      id: json['id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      mmName: json['mm_name'] as String?,
      isActive: json['is_active'] as int?,
    );

Map<String, dynamic> _$MainServiceToJson(MainService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'mm_name': instance.mmName,
      'is_active': instance.isActive,
    };
