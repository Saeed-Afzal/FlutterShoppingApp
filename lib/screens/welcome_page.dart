

import 'package:finalhacking1/screens/home.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  // const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
      
            Center(
              child: Container(
                height: 200,
                width: double.infinity,
                child: Image.asset("assets/start2.jpg"),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: Text(
                "Welcome To Our Shopping App",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
      
      
            Center(
              child: Container(
                height: 300,
                width: double.infinity,
                child: Image.asset("assets/start.jpg"),
              ),
            ),
      
      
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                fixedSize: const Size(240, 40), primary: Colors.deepOrange),
                  onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                  child: Text("SHOP NOW")),
            ),
            
      
      
          
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
          ],
        ),
      ),
    );
  }
}
