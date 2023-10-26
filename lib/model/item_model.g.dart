// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) => ItemModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      mmName: json['mm_name'] as String?,
      vendorId: json['vendor_id'] as String?,
      vendorName: json['vendor_name'] as String?,
      categoryId: json['category_id'] as String?,
      categoryName: json['category_name'] as String?,
      subCategoryId: json['sub_category_id'] as String?,
      subCategoryName: json['sub_category_name'] as String?,
      brandId: json['brand_id'] as String?,
      brandName: json['brand_name'] as String?,
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      itemCode: json['item_code'] as String?,
      qty: json['qty'] as int?,
      price: json['price'] as int?,
      weight: (json['weight'] as num?)?.toDouble(),
      weightByKg: (json['weight_by_kg'] as num?)?.toDouble(),
      isActive: json['is_active'] as int?,
      isInstock: json['is_instock'] as int?,
      isPackage: json['is_package'] as int?,
      description: json['description'] as String?,
      itemType: json['item_type'] as String?,
      unitType: json['unit_type'] as int?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDiscount: json['is_discount'] as int?,
      isSelfDiscount: json['is_self_discount'] as int?,
      isPromotion: json['is_promotion'] as bool?,
      parentDiscountItems: (json['parent_discount_items'] as List<dynamic>?)
          ?.map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      discountItems: (json['discount_items'] as List<dynamic>?)
          ?.map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      promotionItem: json['promotion_item'] == null
          ? null
          : ItemModel.fromJson(json['promotion_item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemModelToJson(ItemModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mm_name': instance.mmName,
      'vendor_id': instance.vendorId,
      'vendor_name': instance.vendorName,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'sub_category_id': instance.subCategoryId,
      'sub_category_name': instance.subCategoryName,
      'brand_id': instance.brandId,
      'brand_name': instance.brandName,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'item_code': instance.itemCode,
      'qty': instance.qty,
      'price': instance.price,
      'weight': instance.weight,
      'weight_by_kg': instance.weightByKg,
      'is_active': instance.isActive,
      'is_instock': instance.isInstock,
      'is_package': instance.isPackage,
      'description': instance.description,
      'item_type': instance.itemType,
      'unit_type': instance.unitType,
      'images': instance.images,
      'is_discount': instance.isDiscount,
      'is_self_discount': instance.isSelfDiscount,
      'is_promotion': instance.isPromotion,
      'parent_discount_items': instance.parentDiscountItems,
      'discount_items': instance.discountItems,
      'promotion_item': instance.promotionItem,
    };

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
      id: json['id'] as String?,
      resourceableType: json['resourceable_type'] as String?,
      resourceableId: json['resourceable_id'] as String?,
      thumbnailImageUrl: json['thumbnail_image_url'] as String?,
      smallImageUrl: json['small_image_url'] as String?,
      mediumImageUrl: json['medium_image_url'] as String?,
      largeImageUrl: json['large_image_url'] as String?,
      isDefault: json['is_default'] as int?,
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resourceable_type': instance.resourceableType,
      'resourceable_id': instance.resourceableId,
      'thumbnail_image_url': instance.thumbnailImageUrl,
      'small_image_url': instance.smallImageUrl,
      'medium_image_url': instance.mediumImageUrl,
      'large_image_url': instance.largeImageUrl,
      'is_default': instance.isDefault,
    };
