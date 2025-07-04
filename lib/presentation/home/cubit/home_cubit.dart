import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webly_task/domain/home/usecases/home.dart';
import 'package:webly_task/presentation/home/cubit/home_state.dart';
import 'package:webly_task/service_locator.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Timer? _debounce;

  // prevents rapid repeated calls
  void getProductExpiryDebounced() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      fetchProducts();
    });
  }


  Future<void> fetchProducts() async {
    if (isClosed) return;
    emit(HomeLoading());
    final result = await sl<HomeUseCase>().call();
    if (isClosed) return;

    result.fold(
      (error) {
        if (!isClosed) emit(HomeError(error.toString()));
      },
      (data) {
        if (!isClosed) emit(HomeLoaded(products: data));
      },
    );
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
