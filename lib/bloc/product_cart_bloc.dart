import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geulis_digitalk/models/product_model.dart';

sealed class ProductCartEvent {}

class ProductCartAdded extends ProductCartEvent {
  final ProductModel product;
  ProductCartAdded({required this.product});
}

class ProductCartDeleted extends ProductCartEvent {
  final int index;
  ProductCartDeleted({required this.index});
}

class ProductCartBloc extends Bloc<ProductCartEvent, List<ProductModel>> {
  ProductCartBloc() : super([]) {
    on<ProductCartAdded>((event, emit) {
      final updatedCart = List<ProductModel>.from(state);
      updatedCart.add(event.product);
      emit(updatedCart);
    });

    on<ProductCartDeleted>((event, emit) {
      final updatedCart = List<ProductModel>.from(state);
      updatedCart.removeAt(event.index);
      emit(updatedCart);
    });
  }
}
