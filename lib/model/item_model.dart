import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.g.dart';

@JsonSerializable()
class ItemModel {
  String? id;
  String? name;
  @JsonKey(name: 'mm_name')
  String? mmName;
  @JsonKey(name: 'vendor_id')
  String? vendorId;
  @JsonKey(name: 'vendor_name')
  String? vendorName;
  @JsonKey(name: 'category_id')
  String? categoryId;
  @JsonKey(name: 'category_name')
  String? categoryName;
  @JsonKey(name: 'sub_category_id')
  String? subCategoryId;
  @JsonKey(name: 'sub_category_name')
  String? subCategoryName;
  @JsonKey(name: 'brand_id')
  String? brandId;
  @JsonKey(name: 'brand_name')
  String? brandName;
  String? sku;
  String? barcode;
  @JsonKey(name: 'item_code')
  String? itemCode;
  int? qty;
  int? price;
  double? weight;
  @JsonKey(name: 'weight_by_kg')
  double? weightByKg;
  @JsonKey(name: 'is_active')
  int? isActive;
  @JsonKey(name: 'is_instock')
  int? isInstock;
  @JsonKey(name: 'is_package')
  int? isPackage;
  String? description;
  @JsonKey(name: 'item_type')
  String? itemType;
  @JsonKey(name: 'unit_type')
  int? unitType;
  List<ImageModel>? images;
  @JsonKey(name: 'is_discount')
  int? isDiscount;
  @JsonKey(name: 'is_self_discount')
  int? isSelfDiscount;
  @JsonKey(name: 'is_promotion')
  bool? isPromotion;
  @JsonKey(name: 'parent_discount_items')
  List<ItemModel>? parentDiscountItems;
  @JsonKey(name: 'discount_items')
  List<ItemModel>? discountItems;
  @JsonKey(name: 'promotion_item')
  ItemModel? promotionItem;

  ItemModel({
    this.id,
    this.name,
    this.mmName,
    this.vendorId,
    this.vendorName,
    this.categoryId,
    this.categoryName,
    this.subCategoryId,
    this.subCategoryName,
    this.brandId,
    this.brandName,
    this.sku,
    this.barcode,
    this.itemCode,
    this.qty,
    this.price,
    this.weight,
    this.weightByKg,
    this.isActive,
    this.isInstock,
    this.isPackage,
    this.description,
    this.itemType,
    this.unitType,
    this.images,
    this.isDiscount,
    this.isSelfDiscount,
    this.isPromotion,
    this.parentDiscountItems,
    this.discountItems,
    this.promotionItem,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemModelToJson(this);
}

@JsonSerializable()
class ImageModel {
  String? id;
  @JsonKey(name: 'resourceable_type')
  String? resourceableType;
  @JsonKey(name: 'resourceable_id')
  String? resourceableId;
  @JsonKey(name: 'thumbnail_image_url')
  String? thumbnailImageUrl;
  @JsonKey(name: 'small_image_url')
  String? smallImageUrl;
  @JsonKey(name: 'medium_image_url')
  String? mediumImageUrl;
  @JsonKey(name: 'large_image_url')
  String? largeImageUrl;
  @JsonKey(name: 'is_default')
  int? isDefault;

  ImageModel(
      {this.id,
      this.resourceableType,
      this.resourceableId,
      this.thumbnailImageUrl,
      this.smallImageUrl,
      this.mediumImageUrl,
      this.largeImageUrl,
      this.isDefault});

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
