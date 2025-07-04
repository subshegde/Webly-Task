
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webly_task/common/handler/response_handler.dart';
import 'package:webly_task/core/network/dio_client.dart';
import 'package:webly_task/data/home/repository/home.dart';
import 'package:webly_task/data/home/sources/home_service.dart';
import 'package:webly_task/domain/home/repository/home.dart';
import 'package:webly_task/domain/home/usecases/home.dart';
import 'package:webly_task/presentation/home/cubit/home_cubit.dart';

final sl = GetIt.instance;
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> setUpServiceLocator() async {

  // Register ResponseHandler
  sl.registerSingleton<ResponseHandler>(ResponseHandler());
  
  // Register SharedPreferences
  sl.registerSingleton<SharedPreferences>(await SharedPreferences.getInstance());

  // Register DioClient
  sl.registerSingleton<DioClient>(await DioClient.create(navigatorKey:navigatorKey));

  // Register Services
  sl.registerSingleton<HomeService>(HomeServiceImpl());

  // Register Repositories
  sl.registerSingleton<HomeRepository>(HomeRepositoryImpl());

  // Register Use Cases
  sl.registerSingleton<HomeUseCase>(HomeUseCase());

  // Register Cubit
  sl.registerSingleton<HomeCubit>(HomeCubit());
}