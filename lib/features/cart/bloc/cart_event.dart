part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addItem(CartItem cartItem) = _addItem;

  const factory CartEvent.removeItem(String itemId) = _removeItem;

  const factory CartEvent.increaseQty(String itemId) = _increaseQty;

  const factory CartEvent.decreaseQty(String itemId) = _decreaseQty;

  const factory CartEvent.clearCart() = _clearCart;
}
