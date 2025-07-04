import 'package:dartz/dartz.dart';
import 'package:webly_task/common/handler/response_handler.dart';
import 'package:webly_task/core/constants/api_endpoints.dart';
import 'package:webly_task/core/network/dio_client.dart';
import 'package:webly_task/service_locator.dart';

abstract class HomeService {
  Future<Either> fetchProducts();
}

class HomeServiceImpl extends HomeService {
  @override
  Future<Either> fetchProducts() {
    return sl<ResponseHandler>().handleDioRequest<dynamic>(
      request: () => sl<DioClient>().get(
        ApiEndpoints.products,
      ),
      onSuccess: (data) => data,
      error400Parser: (data) => data['message'] ?? 'Bad request',
      defaultError: 'Failed to fetch products',
    );
  }
}
