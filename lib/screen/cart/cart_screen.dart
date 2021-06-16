import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttest/bloc/cart_bloc.dart';
import 'package:fluttest/model/cart.dart';
import 'package:fluttest/repository/repository.dart';
import 'package:fluttest/widget/cart_item.dart';

class CartScreen extends StatefulWidget{
  CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>{
  var data = [{'name': 'Gery Chocolats','price':'10000'},{'name': 'Malkist Keju','price':'13000'}];
  List<Cart> listCart = [];

  @override
  Widget build(BuildContext context){
    data.forEach((element) {
      listCart.add(Cart.fromJson(element));
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: BlocProvider(
          create: (context) =>
                          CartBloc(Repository())..add(CartGetEvent()),
                      child: BlocBuilder<CartBloc, CartState>(
                        builder: (context, state) {
                          print(state);
                          if( state is CartInitial){
                            return Text('Loading...');
                          }
                          if( state is CartLoaded){
                          return SingleChildScrollView(
                              child: Container(
                                child: Column(
                                  children: [
                                    for ( var item in state.data ) ItemCart(item: item,),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: InkWell(
                                        child : Container(
                                          padding: EdgeInsets.only(top:15, bottom:15),
                                          width: MediaQuery.of(context).size.width - 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color:Colors.redAccent[400]
                                          ) ,
                                          child: Center( 
                                            child: Text('VIEW CART',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white
                                            )), 
                                          ), 
                                        )
                                      ),
                                    )
                                    
                                  ],
                                ),
                              ),
                            );
                          }
                        })
      )
    );
  }
}