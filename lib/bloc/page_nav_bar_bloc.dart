import 'package:flutter_bloc/flutter_bloc.dart';

sealed class PageNavEvent {}

class PageNavChanged extends PageNavEvent {
  int curentIndex;
  PageNavChanged({required this.curentIndex});
}

class PageNavBarBloc extends Bloc<PageNavEvent, int> {
  PageNavBarBloc() : super(0) {
    on<PageNavChanged>(
      (event, emit) {
        emit(event.curentIndex);
      },
    );
  }
}
