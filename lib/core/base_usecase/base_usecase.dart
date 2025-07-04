// ignore: avoid_types_as_parameter_names
abstract class UseCase<Type, Param> {
  Future<Type> call({Param params});
}
