import 'package:ecommerce_project/features/cart/bloc/cart_bloc.dart';
import 'package:ecommerce_project/features/product/bloc/product_detail_bloc.dart';
import 'package:ecommerce_project/repository/product_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'data/data_source/remote/remote_api.dart';
import 'data/data_source/remote/remote_data_source.dart';
import 'features/home/bloc/home_bloc.dart';
import 'repository/home_repository.dart';
import 'utils/api_constants.dart';

GetIt injector = GetIt.instance;

Future<void> initDependencies() async {
  _injectRemoteDataSource();
  _injectRepositories();
  _injectBlocs(); // initialize easy loading
}

void _injectRemoteDataSource() {
  injector.registerLazySingleton<Dio>(
    () => Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(milliseconds: 3600000),
      receiveTimeout: const Duration(milliseconds: 3600000),
      sendTimeout: const Duration(milliseconds: 3600000),
      headers: {
        "accept": "application/json",
      },
    )),
  );

  injector.registerSingleton<RemoteApi>(RemoteApi(injector.get<Dio>()));
  injector.registerSingleton<RemoteDataSource>(
      RemoteDataSource(injector.get<RemoteApi>()));
}

void _injectRepositories() {
  injector.registerFactory<HomeRepository>(
    () => HomeRepository(
      remoteDataSource: injector.get<RemoteDataSource>(),
    ),
  );
  injector.registerFactory<ProductRepository>(
    () => ProductRepository(
      remoteDataSource: injector.get<RemoteDataSource>(),
    ),
  );
}

void _injectBlocs() {
  injector.registerFactory<HomeBloc>(
    () => HomeBloc(homeRepository: injector.get<HomeRepository>()),
  );
  injector.registerFactory<ProductDetailBloc>(
    () =>
        ProductDetailBloc(productRepository: injector.get<ProductRepository>()),
  );
  injector.registerFactory<CartBloc>(
    () => CartBloc(),
  );
}
