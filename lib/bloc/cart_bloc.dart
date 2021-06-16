import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fluttest/model/cart.dart';
import 'package:fluttest/repository/repository.dart';
import 'package:meta/meta.dart';


part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this.repository) : super(CartInitial());
  final Repository repository;
  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    print(event);
    yield* _mapLoginSubmittedToState();
  }

   Stream<CartState> _mapLoginSubmittedToState() async* {
    
    final bool = await repository.getProducts();

    print(bool);

    yield CartLoaded( data : bool);
  }
}
