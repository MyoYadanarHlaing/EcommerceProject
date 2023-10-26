import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qty_cubit.freezed.dart';

@freezed
abstract class ItemQtyState with _$ItemQtyState {
  const factory ItemQtyState(int qty) = _ItemQtyState;
}

class ItemQtyCubit extends Cubit<ItemQtyState> {
  ItemQtyCubit() : super(const ItemQtyState(1));

  void addQuantity() {
    final quantity = state.qty + 1;
    emit(ItemQtyState(quantity));
  }

  void removeQuantity() {
    final quantity = state.qty > 1 ? state.qty - 1 : state.qty;
    emit(ItemQtyState(quantity));
  }
}

// @freezed
// abstract class ItemQtyState with _$ItemQtyState {
//   const factory ItemQtyState(int qty) = _ItemQtyState;
// }
//
// class ItemQtyCubit extends Cubit<ItemQtyState> {
//   ItemQtyCubit() : super(const ItemQtyState(1));
//
//   void addQuantity() {
//     final quantity = state.qty + 1;
//     emit(ItemQtyState(quantity));
//   }
//
//   void removeQuantity() {
//     final quantity = state.qty > 1 ? state.qty - 1 : state.qty;
//     emit(ItemQtyState(quantity));
//   }
// }
