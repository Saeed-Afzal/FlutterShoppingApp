import 'package:finalhacking1/screens/feedback_page.dart';
import 'package:finalhacking1/screens/order_page.dart';
import 'package:finalhacking1/screens/welcome_page.dart';
import 'package:finalhacking1/screens/wishlist_page.dart';
import 'package:flutter/material.dart';




class NavigationDrawerWidget extends StatelessWidget {
  // const NavigationDrawerWidget({ Key? key }) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 10);
  @override
  Widget build(BuildContext context) {
    final name = 'User Name';
    final email = 'abc@gmail.com';
    final urlImage = 'assets/pic.jpg';


    return Drawer(
      child: Material(
        color: Colors.blue,
        // color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: padding,
          children: [
            // buildHeader(
            //   urlImage: urlImage,
            //   name: name,
            //   email: email,
            //   onClicked: () =>
            //   Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context)=> UserPage(
            //       name:name,
            //       email:email,
            //       urlImage: urlImage,
            //     )
            //     ))
            // ),





            SizedBox(
              height: 40,
            ),
            buildMenuItem(
              text: 'Orders',
              icon: Icons.history_edu_outlined,
              onClicked: ()=> selectedItem(context, 0 )
            ),
            SizedBox(
              height: 20,
            ),
            buildMenuItem(
              text: 'Sized Chart',
              icon: Icons.add_chart_outlined,
              onClicked: ()=> selectedItem(context, 1 )

            ),
            SizedBox(
              height: 20,
            ),
            buildMenuItem(
              text: 'Wish List',
              icon: Icons.favorite_border_outlined,
              onClicked: ()=> selectedItem(context, 2 )

            ),
             SizedBox(
              height: 20,
            ),
            buildMenuItem(
              text: 'FeedBack',
              icon: Icons.feed_outlined,
              onClicked: ()=> selectedItem(context, 3 )

            ),
            const SizedBox(height: 14,),
             Divider(color: Colors.white),
            const SizedBox(height: 14,),

            SizedBox(
              height: 10,
            ),
            buildMenuItem(
              text: 'Working...',
              icon: Icons.logout_outlined,
              onClicked: ()=> selectedItem(context, 4 )

            ),
            

          ],
        ),
      ),
    );
  }

Widget buildHeader({
   String urlImage,
   String name,
   String email,
   VoidCallback onClicked,
}) =>
  InkWell(
    onTap: onClicked,
    child: Container(
      padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(urlImage),
          ),
          SizedBox(
            width: 20,
            
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
              style:TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),

              const SizedBox(
                height:4
              ),

              Text(email,
              style:TextStyle(
                fontSize: 14,
                color: Colors.white,
              )),
              
            ],
          ),

      ],),
      
      ),
  );





  Widget buildMenuItem({
     String text,
     IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }


  void selectedItem(BuildContext context, int index){
    Navigator.of(context).pop();

    switch (index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => OrderPage()
          )
          );
      break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WelcomePage()
          ));
      break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WishListPage()
          ));
      break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FeedbackPage()
          ));
      break;
    }
  }
}
