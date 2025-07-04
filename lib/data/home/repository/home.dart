import 'package:dartz/dartz.dart';
import 'package:webly_task/data/home/models/products_model.dart';
import 'package:webly_task/data/home/sources/home_service.dart';
import 'package:webly_task/domain/home/repository/home.dart';
import 'package:webly_task/service_locator.dart';

class HomeRepositoryImpl extends HomeRepository{
  @override
  Future<Either> fetchHomeData() async{
    final result = await sl<HomeService>().fetchProducts();

    return result.fold((error) => Left(error), (data) {
      final List<Products> products = (data['products'] as List).map((json) => Products.fromJson(json)).toList();
      return Right(products);
    });
  }
}