import 'package:flutter/material.dart';

class WishListPage extends StatefulWidget {
  // const OrderPage({ Key? key }) : super(key: key);

  @override
  _OrderWishListPageState createState() => _OrderWishListPageState();
}

class _OrderWishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WishList Page"),
      ),

      body: Center(
        child: Container(
          child: Text("All Favorites come here",
          style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF17532)
                          )
                          ),
        ),
      ),
    );
  }
}