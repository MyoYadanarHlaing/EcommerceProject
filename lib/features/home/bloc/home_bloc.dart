import 'package:ecommerce_project/repository/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/vendor_model.dart';
import '../../../utils/data_state.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeRepository homeRepository;

  HomeBloc({required this.homeRepository}) : super(const HomeLoading()) {
    on<_vendor> (getVendor);
  }

  Future<void> getVendor(event,emit) async {
    emit(const HomeLoading());
    final result= await homeRepository.getVendorData();
    if(result is DataSuccess){
      emit(HomeSuccess(VendorModel.fromJson(result.data)));
    } else {
      emit(const HomeFailed());
    }
  }
}
