import 'package:dio/dio.dart';
import 'package:ecommerce_project/data/data_source/remote/remote_api.dart';
import 'package:ecommerce_project/utils/data_state.dart';
import 'package:ecommerce_project/utils/data_state_convertable.dart';

class RemoteDataSource with DataStateConvertable{
  final RemoteApi remoteApi;

  RemoteDataSource(this.remoteApi);

  Future<DataState> getVendorData() async {
    Response response = await remoteApi.getVendorData();
    return convertToDataState(response);
  }

  Future<DataState> getItem() async {
    Response response = await remoteApi.getItem();
    return convertToDataState(response);
  }
}
