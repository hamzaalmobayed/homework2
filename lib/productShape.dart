import 'package:flutter/material.dart';
import 'package:homework2/product.dart';

import 'main.dart';
class ProductShape extends StatefulWidget {
  Product product1;

  ProductShape(this.product1);

  @override
  _ProductShapeState createState() => _ProductShapeState(product1);
}

class _ProductShapeState extends State<ProductShape> {
  Product product;

  _ProductShapeState(this.product);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(20),
        topLeft: Radius.circular(20),
        topRight: Radius.circular(50),
      ),
      child: Container(
        margin: EdgeInsets.all(20),
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Builder(builder:(context)=> Image.asset(product.img,width: MediaQuery.of(context).size.width*0.25,)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                      color: Color.fromRGBO(175, 63, 48, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  product.amount,
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  product.price,
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            IconButton(
              iconSize: 30,
              onPressed: (){
                setState(() {
                  product.isFavourite=!product.isFavourite;
                  if(product.isFavourite){
                    favourit.add(product);
                  }else{
                    favourit.remove(product);
                  }
                });
              },
              icon: Icon(Icons.favorite),
              color: product.isFavourite?Colors.red:Colors.grey,

            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(40),
            ),
            color: Color.fromRGBO(251, 204, 211, 1),
            border: Border.fromBorderSide(BorderSide(
              color: c,
              width: 1,
              style: BorderStyle.solid,
            ))),
      ),
    );
  }

}

/*class ProductShape extends StatelessWidget {
  Product product;
  ProductShape(this.product);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(20),
        topLeft: Radius.circular(20),
        topRight: Radius.circular(50),
      ),
      child: Container(
        margin: EdgeInsets.all(20),
        height: 120,
        child: Row(
          children: [
            Builder(builder:(context)=> Image.asset(product.img,width: MediaQuery.of(context).size.width*0.25,)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                      color: Color.fromRGBO(175, 63, 48, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  product.amount,
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  product.price,
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            IconButton(
                onPressed: (){
                  product.isFavourite=!product.isFavourite;
                  if(product.isFavourite){
                    favourit.add(product);
                  }else{
                    favourit.remove(product);
                  }
                },
                icon: Icon(Icons.favorite),
              color: product.isFavourite?Colors.red:Colors.grey,

            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(40),
            ),
            color: Color.fromRGBO(251, 204, 211, 1),
            border: Border.fromBorderSide(BorderSide(
              color: c,
              width: 1,
              style: BorderStyle.solid,
            ))),
      ),
    );
  }
}*/
