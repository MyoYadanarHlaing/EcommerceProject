part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.success(List<CartItem> cartItems) = CartSuccess;

  // const factory CartState.failed() = CartFailed;
  //
  // const factory CartState.loading() = CartLoading;
}
