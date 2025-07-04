import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webly_task/service_locator.dart';

class AuthorizationInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = sl<SharedPreferences>();
    final token = prefs.getString('accessToken');
    options.headers['Authorization'] = 'Bearer $token';
    handler.next(options);
  }
}
