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
        ),
        body: Container(
          child: 
          ListView(
            children: [
               Container(child:
                ExploreCart(image: "assets/images/quality.jpg", title: "Quality Products", isActive: true)),
             Container(child:
              ExploreCart(image: "assets/images/suport.png", title: "Data Suport", isActive: true)),
              Container(child: ExploreCart(image: "assets/images/speed.png", title: "Speed Matters", isActive: true)),
               Container(child:
                ExploreCart(image: "assets/images/teamwork.jpg", title: "Team Work", isActive: true)),
                Container(child:
                 ExploreCart(image: "assets/images/partnership.png", title: "Partnership", isActive: true)),
             Container(child:
              ExploreCart(image: "assets/images/privacy.jpg", title: "Privacy Policy", isActive: true)),
              Container(child:
               ExploreCart(image: "assets/images/terms.jpg", title: "Terms of service", isActive: true)),
              ],
              scrollDirection:Axis.horizontal
          ),
        )
      ),
    
  );


}
  
}