import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor_info_model.g.dart';

@JsonSerializable()
class VendorInfoModel {
  String? id;
  String? name;
  String? email;
  String? username;
  String? code;
  String? mobile;
  @JsonKey(name: 'main_service_id')
  String? mainServiceId;
  @JsonKey(name: 'main_service')
  MainService? mainService;
  double? km;
  String? address;
  @JsonKey(name: 'order_opening_time')
  String? orderOpeningTime;
  @JsonKey(name: 'order_closing_time')
  String? orderClosingTime;
  @JsonKey(name: 'is_active')
  int? isActive;
  @JsonKey(name: 'is_closed')
  int? isClosed;
  @JsonKey(name: 'cover_image')
  String? coverImage;
  @JsonKey(name: 'logo_image')
  String? logoImage;
  String? lat;
  String? lng;

  VendorInfoModel(
      {this.id,
      this.name,
      this.email,
      this.username,
      this.code,
      this.mobile,
      this.mainServiceId,
      this.mainService,
      this.km,
      this.address,
      this.orderOpeningTime,
      this.orderClosingTime,
      this.isActive,
      this.isClosed,
      this.coverImage,
      this.logoImage,
      this.lat,
      this.lng});

  factory VendorInfoModel.fromJson(Map<String, dynamic> json) =>
      _$VendorInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$VendorInfoModelToJson(this);
}

@JsonSerializable()
class MainService {
  String? id;
  String? code;
  String? name;
  @JsonKey(name: 'mm_name')
  String? mmName;
  @JsonKey(name: 'is_active')
  int? isActive;

  MainService({this.id, this.code, this.name, this.mmName, this.isActive});

  factory MainService.fromJson(Map<String, dynamic> json) =>
      _$MainServiceFromJson(json);

  Map<String, dynamic> toJson() => _$MainServiceToJson(this);
}
