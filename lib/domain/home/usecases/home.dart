import 'package:dartz/dartz.dart';
import 'package:webly_task/core/base_usecase/base_usecase.dart';
import 'package:webly_task/domain/home/repository/home.dart';
import 'package:webly_task/service_locator.dart';

class HomeUseCase extends UseCase<Either, int> {
  @override
  Future<Either> call({int? params}) async {
    return await sl<HomeRepository>().fetchHomeData();
  }
}