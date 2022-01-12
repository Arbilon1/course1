import 'package:flutter/material.dart';
import 'package:online_shop/ExploreCart.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home:  HomeScreen());
  }
}






class HomeScreen extends StatelessWidget {
  const HomeScreen ({Key? key}) : super(key: key);

@override 
Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
         title: Text("Home",
         style: TextStyle(color: Colors.yellow, 
          fontWeight:FontWeight.bold, 
          fontSize:25),),
          centerTitle: true,
          backgroundColor: Colors.black,
           actions: [
            Padding(
              padding: EdgeInsets.only(right: 0), 
              child: IconButton(onPressed: () {},
               icon:Icon(Icons.search)),),
            Padding(
              padding: EdgeInsets.only(right: 10), 
              child: IconButton(onPressed: () {}, 
              icon: Icon(Icons.shopping_cart_rounded)),),
              
          ],
        ),
        body: 
          Container( padding: EdgeInsets.fromLTRB(0, 5, 0, 560) ,
          child: 
          ListView( 
            children: [
               Container(child:
                ExploreCart(image: "assets/images/art.jpg", title: "Art", isActive: true)),
             Container(child:
              ExploreCart(image: "assets/images/antiques.jpg", title: "Antiques", isActive: true)),
              Container(child: ExploreCart(image: "assets/images/books.jpg", title: "Books", isActive: true)),
               Container(child:
                ExploreCart(image: "assets/images/Camera.jpg", title: "Camera & Photo", isActive: true)),
                Container(child:
                 ExploreCart(image: "assets/images/Clothes.jpg", title: "Clothing", isActive: true)),
             Container(child:
              ExploreCart(image: "assets/images/Electronics.jpg", title: "Electronics", isActive: true)),
              Container(child:
               ExploreCart(image: "assets/images/Garden.jpg", title: "Home & Garden", isActive: true)),
               Container(child: ExploreCart(image: "assets/images/Phones.jpg", title: "Phones", isActive: true)),
              ],
              scrollDirection:Axis.horizontal
          ),
        ),
      ),
    
  );


}
  
}