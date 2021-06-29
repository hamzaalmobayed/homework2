import 'package:flutter/material.dart';
import 'package:homework2/main.dart';
import 'package:homework2/productShape.dart';
class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {

  @override
  Widget build(BuildContext context) {
    return favourit.length==0?Center(child: Text("There is no favourite products!!!",style: TextStyle(color: c,fontSize: 25,fontWeight: FontWeight.bold),)): ListView(
      children:favourit.map((e) => ProductShape(e)).toList(),
    );
  }
}
