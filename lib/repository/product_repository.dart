import 'package:ecommerce_project/data/data_source/remote/remote_data_source.dart';
import 'package:ecommerce_project/utils/data_state.dart';

class ProductRepository {
  RemoteDataSource remoteDataSource;

  ProductRepository({required this.remoteDataSource});

  Future<DataState> getItem() async {
    final res = await remoteDataSource.getItem();
    return res;
  }
}
