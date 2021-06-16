part of 'cart_bloc.dart';

@immutable
abstract class CartState extends Equatable{
  const CartState();
  @override
  List<Object> get props => [];
}

class CartInitial extends CartState {}
class CartGetState extends CartState {}
class CartLoaded extends CartState {
  final List<Cart> data;

  CartLoaded({@required this.data});
  @override
  List<Object> get props => [data];
}
class CartError extends CartState {}