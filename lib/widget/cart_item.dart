import 'package:flutter/material.dart';
import 'package:fluttest/model/cart.dart';

class ItemCart extends StatelessWidget{
  final Cart item;
  const ItemCart({
    Key key,
    this.item
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      child : Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Container(
             width: 90,
             height: 90,
             color: Colors.grey,
            ),
          ),
          SizedBox(width:20),
          Container(
             width: MediaQuery.of(context).size.width - 150,
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.menuName),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('USD '+ item.menuPrice),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Stock'),
                            SizedBox(width:20),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.grey[300])
                              ),
                              child: Row(
                                children: [
                                  InkWell(
                                    child: Container(
                                      width: 30,
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Text("-",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey
                                      ),),  
                                    )
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300])
                                    ),
                                    child: Text("0"),
                                  ),
                                   InkWell(
                                    child: Container(
                                      width: 30,
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Text("+",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey
                                      ),),  
                                    )
                                  )
                                ],
                              )
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Order'),
                            SizedBox(width:20),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.grey[300])
                              ),
                              child: Row(
                                children: [
                                  InkWell(
                                    child: Container(
                                      width: 30,
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Text("-",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey
                                      ),),  
                                    )
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300])
                                    ),
                                    child: Text("0"),
                                  ),
                                   InkWell(
                                    child: Container(
                                      width: 30,
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: Text("+",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey
                                      ),),  
                                    )
                                  )
                                ],
                              )
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ]
            ),
          )
        ],
      )
    );
  }
}