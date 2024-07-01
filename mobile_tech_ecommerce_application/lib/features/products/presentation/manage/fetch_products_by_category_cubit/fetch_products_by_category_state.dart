part of 'fetch_products_by_category_cubit.dart';

@immutable
sealed class FetchProductsByCategoryState {}

final class FetchProductsByCategoryInitial extends FetchProductsByCategoryState {}


final class FetchProductsByCategoryLoading extends FetchProductsByCategoryState {}
final class FetchProductsByCategorySuccess extends FetchProductsByCategoryState {
  final List<ProductModel> productsList;
  FetchProductsByCategorySuccess({required this.productsList});
}
final class FetchProductsByCategoryFailuer extends FetchProductsByCategoryState {
  final String errorMessage;
FetchProductsByCategoryFailuer({required this.errorMessage});

}

