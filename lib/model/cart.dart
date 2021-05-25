class Cart{
  String menuName;
  String menuPrice;

  Cart(this.menuName,this.menuPrice);

  Cart.fromJson(Map<String,dynamic> json){
    menuName = json['name'];
    menuPrice = json['price'];
  }
}