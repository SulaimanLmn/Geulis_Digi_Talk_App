import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geulis_digitalk/models/product_model.dart';

sealed class ProductCartEvent {}

class ProductCartAdded extends ProductCartEvent {
  final ProductModel products;
  ProductCartAdded({required this.products});
}

class ProductCartDeleted extends ProductCartEvent {
  final int index;
  ProductCartDeleted({required this.index});
}

class ProductCartBloc extends Bloc<ProductCartEvent, List<ProductModel>> {
  ProductCartBloc() : super([]) {
    on<ProductCartAdded>(
      (event, emit) {
        emit(List<ProductModel>.from(state)..add(event.products));
      },
    );

    on<ProductCartDeleted>(
      (event, emit) {},
    );
  }
}
