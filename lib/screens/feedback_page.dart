import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  // const OrderPage({ Key? key }) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback Page"),
      ),

      body: Center(
        child: Container(
          child: Text("All Feedbacks come here",
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