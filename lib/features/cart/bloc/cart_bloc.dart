import 'package:ecommerce_project/model/cart_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartSuccess([])) {
    on<_addItem>(addToCart);
    on<_removeItem>(removeFromCart);
    on<_increaseQty>(increaseQty);
    on<_decreaseQty>(decreaseQty);
    on<_clearCart>(clearCart);
  }

  Future<void> addToCart(event, emit) async {
    bool sameIdExist = false;
    List<CartItem> items = List<CartItem>.from(state.cartItems);
    for (int i = 0; i < items.length; i++) {
      if (items[i].item.id == event.cartItem.item.id) {
        sameIdExist = true;
        items[i] =
            items[i].copyWith(qty: (items[i].qty + event.cartItem.qty).toInt());
      }
    }
    if (!sameIdExist) items.add(event.cartItem);
    emit(CartSuccess(items));
  }

  Future<void> removeFromCart(event, emit) async {
    List<CartItem> items = List<CartItem>.from(state.cartItems);
    items.removeWhere((item) => item.item.id == event.itemId);
    emit(CartSuccess(items));
  }

  Future<void> increaseQty(event, emit) async {
    List<CartItem> items = List<CartItem>.from(state.cartItems).map((item) {
      if (item.item.id == event.itemId) {
        return item.copyWith(qty: item.qty + 1);
      }
      return item;
    }).toList();
    emit(CartSuccess(items));
  }

  Future<void> decreaseQty(event, emit) async {
    List<CartItem> items = List<CartItem>.from(state.cartItems).map((item) {
      if (item.item.id == event.itemId && item.item.qty! > 1) {
        return item.copyWith(qty: item.qty - 1);
      }
      return item;
    }).toList();
    emit(CartSuccess(items));
  }

  Future<void> clearCart(event, emit) async {
    emit(const CartSuccess([]));
  }

  int calculateTotalPrice(List<CartItem> cartItems) {
    int totalPrice = 0;
    for (var cartItem in cartItems) {
      totalPrice += cartItem.item.price! * cartItem.qty;
    }
    return totalPrice;
  }
}
