import 'package:webly_task/data/home/models/products_model.dart';

abstract class HomeState{}
class HomeInitial extends HomeState {}
class HomeLoading extends HomeState {}
class HomeLoaded extends HomeState {
  final List<Products>? products;
  HomeLoaded({required this.products});
}
class HomeError extends HomeState {
  final String errorMessage;

  HomeError(this.errorMessage);
}