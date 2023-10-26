import 'package:dio/dio.dart';

class RemoteApi {
  final Dio dio;

  RemoteApi(this.dio);

  Future<Response> getVendorData() async {
    return dio.get('/v1/customer/dummy-vendor');
  }

  Future<Response> getItem() async {
    return dio.get('/v1/customer/dummy-item');
  }
}
