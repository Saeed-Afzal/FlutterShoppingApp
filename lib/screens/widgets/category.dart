import 'package:finalhacking1/screens/widgets/category_card.dart';
import 'package:flutter/material.dart';


class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
            Icon(Icons.book, size: 40,color: Colors.blue,),
            'Book'
            ),
            CategoryCard(
            Icon(Icons.computer, size: 40, color: Colors.blue,),
            'Laptops'
            ),
            CategoryCard(
            Icon(Icons.car_rental, size: 40,color: Colors.blue,),
            'Cars'
            ),
            CategoryCard(
            Icon(Icons.mobile_friendly, size: 40,color: Colors.blue,),
            'Mobiles'
            ),
            CategoryCard(
            Icon(Icons.shop, size: 40,color: Colors.blue,),
            'Clothes'
            ),
            CategoryCard(
            Icon(Icons.weekend, size: 40,color: Colors.blue,),
            'Furniture'
            ),
        ],
      ),
    );
  }
}