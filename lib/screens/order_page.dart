import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  // const OrderPage({ Key? key }) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Page"),
      ),

      body: Center(
        child: Container(
          child: Text("All Orders come here",
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