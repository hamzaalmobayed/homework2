import 'package:flutter/material.dart';
import 'package:homework2/main.dart';
import 'package:homework2/productShape.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: images.map((e) =>Container(margin: EdgeInsets.all(20),child: Image.asset(e,height: 200,width: 300,))).toList(),
          ),
        ),
        Column(
          children: products.map((e) =>ProductShape(e) ).toList(),
        )
      ],
    );
  }
}


