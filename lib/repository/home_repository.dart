import 'package:ecommerce_project/data/data_source/remote/remote_data_source.dart';
import 'package:ecommerce_project/utils/data_state.dart';

class HomeRepository {
  RemoteDataSource remoteDataSource;

  HomeRepository({required this.remoteDataSource});

  Future<DataState> getVendorData() async {
    final res = await remoteDataSource.getVendorData();
    return res;
  }
}
