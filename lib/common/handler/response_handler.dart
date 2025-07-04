import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ResponseHandler {
  Future<Either<String, T>> handleDioRequest<T>({
    required Future<Response> Function() request,
    required T Function(dynamic data) onSuccess,
    String Function(dynamic data)? error400Parser,
    String defaultError = 'An error occurred',
  }) async {
    try {
      final response = await request();
      log('response ${response.data}');
      return Right(onSuccess(response.data));
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;
      final data = e.response?.data;

      if (statusCode == 400 && error400Parser != null) {
        return Left(error400Parser(data));
      }

      return Left(data?['message'] ?? e.message ?? defaultError);
    } catch (_) {
      return Left(defaultError);
    }
  }
}
