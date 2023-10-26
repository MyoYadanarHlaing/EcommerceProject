part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.success(ItemDetailModel itemDetailModel) =
      ProductDetailSuccess;

  const factory ProductDetailState.failed() = ProductDetailFailed;

  const factory ProductDetailState.loading() = ProductDetailLoading;
}
