import 'package:finalhacking1/screens/card__page.dart';
import 'package:finalhacking1/screens/widgets/category.dart';
import 'package:finalhacking1/screens/widgets/category_card.dart';
import 'package:finalhacking1/screens/widgets/navigate.dart';
import 'package:finalhacking1/screens/widgets/slider.dart';
import 'package:flutter/material.dart';

//animated text

import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            //animated text
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Keep Calm & Shop Online',
                    textStyle: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 4,
                pause: const Duration(milliseconds: 150),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
            //animated text
            SizedBox(
              height: 20,
            ),
            CarouselWithDotsPage(imgList: imgList),
            SizedBox(
              height: 20,
            ),


            //
            Category(),
            //

            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: double.infinity,
                  child: Text("Popular",
                      style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF17532)
                          )
                          )
                          ),
            ),
            SizedBox(
              height: 10,
            ),

            // Cards Widget Coding
            Center(
              child: Container(
                  height: MediaQuery.of(context).size.height - 30.0,
                  width: double.infinity,
                  child: CookiePage()),
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
                  child: Text("Back to Top")),
            ),
          ],
        ),
      ),
    );
  }
}
