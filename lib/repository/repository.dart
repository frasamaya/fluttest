import 'package:fluttest/service/service.dart';

import '../model/cart.dart';

class Repository {
  Future<List<Cart>> getProducts() async {
    final response = await Service().get('https://raw.githubusercontent.com/GoogleChromeLabs/sample-pie-shop/master/src/data/products.json');

      print(response);
    if (response['products'] != null) {
      List<Cart> products = [];

      
      for(var item in response['products']['data']['items'] ){
        products.add(Cart.fromJson( item ));
      }
      return products;
    }else{
      return null;
    }
  }
}