import 'package:ecommerce_project/model/item_detail_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../repository/product_repository.dart';
import '../../../utils/data_state.dart';

part 'product_detail_event.dart';

part 'product_detail_state.dart';

part 'product_detail_bloc.freezed.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductRepository productRepository;

  ProductDetailBloc({required this.productRepository})
      : super(const ProductDetailLoading()) {
    on<_item>(getItem);
  }

  Future<void> getItem(event, emit) async {
    emit(const ProductDetailLoading());
    final result = await productRepository.getItem();
    if (result is DataSuccess) {
      emit(ProductDetailSuccess(ItemDetailModel.fromJson(result.data)));
    } else {
      emit(const ProductDetailFailed());
    }
  }
}
