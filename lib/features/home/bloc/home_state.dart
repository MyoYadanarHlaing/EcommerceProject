part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.success(VendorModel vendorModel) = HomeSuccess;

  const factory HomeState.failed() = HomeFailed;

  const factory HomeState.loading() = HomeLoading;
}
