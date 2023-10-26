import 'dart:io';
import 'package:dio/dio.dart';

import 'data_state.dart';

mixin DataStateConvertable {
  DataState<T> convertToDataState<T>(Response response) {
    if (response.statusCode == HttpStatus.ok ||
        response.statusCode == HttpStatus.accepted ||
        response.statusCode == HttpStatus.created) {
      return DataSuccess(data: response.data);
    }
    return DataFailed(
      error: DioException(
        error: response.statusMessage,
        response: response,
        type: DioExceptionType.unknown,
        requestOptions: response.requestOptions,
      ),
    );
  }
}
