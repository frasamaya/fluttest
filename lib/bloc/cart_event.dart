part of 'cart_bloc.dart';

@immutable
abstract class CartEvent extends Equatable{
  const CartEvent();

  @override
  List<Object> get props => [];
}
class CartGetEvent extends CartEvent {}