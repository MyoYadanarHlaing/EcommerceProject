import 'item_model.dart';

class CartModel {
  List<CartItem> items;

  CartModel(this.items);
}

class CartItem {
  ItemModel item;
  int qty = 1;

  CartItem({
    required this.item,
    required this.qty,
  });

  CartItem copyWith({
    ItemModel? item,
    int? qty,
  }) {
    return CartItem(
      item: item ?? this.item,
      qty: qty ?? this.qty,
    );
  }
}
