import 'package:flutter/material.dart';
import 'package:homework2/product.dart';
import 'package:homework2/profile.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HomeWork2",
      home:FirstLayout() ,
    );
  }
}
Color c = Color.fromRGBO(242, 60, 60, 1);
List<Product> favourit=[];
List<Product> products=[
  Product(
      "images/apricot.png",
      "Apricot",
      "10\$",
      "30 kilos",
      false
  ),
  Product(
      "images/cherrys.png",
      "Cherry",
      "5\$",
      "60 kilos",
      false
  ),
  Product(
      "images/grapes.png",
      "Grape",
      "15\$",
      "10 kilos",
      false
  ),
  Product(
      "images/kiwis.png",
      "Kiwi",
      "40\$",
      "100 kilos",
      false
  ),
  Product(
      "images/lemons.png",
      "Lemon",
      "50\$",
      "100 kilos",
      false
  ),
  Product(
      "images/straw.png",
      "Strawberry",
      "50\$",
      "40 kilos",
      false
  )
];
List<String> images = [
  "images/f1.jpg",
  "images/f2.jpg",
  "images/f3.jpg",
  "images/f4.jpg",
  "images/f5.jpg",
];
class FirstLayout extends StatefulWidget {

  @override
  _FirstLayoutState createState() => _FirstLayoutState();
}

class _FirstLayoutState extends State<FirstLayout> with SingleTickerProviderStateMixin {
  late TabController control;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    control=TabController(length: 3,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: c,
        title: Text("Product",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
            },
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.local_grocery_store,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
        bottom: TabBar(
          controller: control,
          tabs: [
            Tab(
              icon: Icon(Icons.home,color: Colors.white,),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.favorite,color: Colors.white,),
              text: "Favourite",
            ),
            Tab(
              icon: Icon(Icons.account_circle,color: Colors.white,),
              text: "Profile",
            ),
          ],
        ),
      ),
      body: TabBarView(
          controller: control,
          children: [
            home(),
            favourite(),
            Profile(),
          ],
        ),
    );
  }


  //////////////shape/////////////////////
  Widget productShape(Product product ){
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


  //////////////home/////////////////////
  Widget home(){
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: images.map((e) =>Container(margin: EdgeInsets.all(20),child: Image.asset(e,height: 200,width: 300,))).toList(),
          ),
        ),
        Column(
          children: products.map((e) =>productShape(e) ).toList(),
        )
      ],
    );
  }


  //////////////favourite/////////////////////
  Widget favourite(){
    return favourit.length==0?Center(child: Text("There is no favourite products!!!",style: TextStyle(color: c,fontSize: 20,fontWeight: FontWeight.bold),)): ListView(
      children:favourit.map((e) => productShape(e)).toList(),
    );
  }
}
