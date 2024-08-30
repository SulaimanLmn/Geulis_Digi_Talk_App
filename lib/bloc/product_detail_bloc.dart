import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geulis_digitalk/models/product_model.dart';

sealed class ProductDetailEvent {}

class ProductDetailLoaded extends ProductDetailEvent {
  final ProductModel product;
  ProductDetailLoaded({required this.product});
}

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductModel> {
  ProductDetailBloc(ProductModel initialModel) : super(initialModel) {
    on<ProductDetailLoaded>(
      (event, emit) {
        emit(event.product);
      },
    );
  }
}
