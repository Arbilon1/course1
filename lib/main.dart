import 'package:flutter/material.dart';
import 'package:online_shop/ExploreCart.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Online Shop', 
          style: TextStyle(color: Colors.yellow, 
          fontWeight:FontWeight.bold, 
          fontSize:25),),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 0), 
              child: IconButton(onPressed: () {},
               icon:Icon(Icons.search)),),
            Padding(
              padding: EdgeInsets.only(right: 10), 
              child: IconButton(onPressed: () {}, 
              icon: Icon(Icons.shopping_cart_rounded)),)
          ],
          backgroundColor: Colors.black,
          
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Text(
                     'Everything you want in one place',
                     style: TextStyle(
                       fontSize:23,
                       fontWeight: FontWeight.bold,
                       fontStyle: FontStyle.italic,
                       backgroundColor: Colors.red,
                      
                       
                     ),
                    )
                  ],
                ), 
                ),
                Container(
                  padding: EdgeInsets.all(1),
                  height: 260,
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    
                    
                  ),
                  child: Image.asset("assets/images/onshop.jpg", fit: BoxFit.fill,),
                ),
              Container(
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: 'Free shipping', 
                        style: TextStyle(backgroundColor: Colors.red,
                        fontSize: 20)),
                      TextSpan(
                        text: ' on millions of items.',
                         style: TextStyle(color: Colors.black, fontSize: 18)),
                      TextSpan(
                        text: 'Enjoy', style: TextStyle(backgroundColor: Colors.red,
                         fontSize: 20)),
                      TextSpan(
                        text: ' low prices and great discount.', 
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                      TextSpan(
                        text: 'Discover the latest fashion trends.', 
                        style: TextStyle(backgroundColor: Colors.yellow,
                         color: Colors.black, 
                         fontSize: 30, 
                         fontWeight: FontWeight.bold)),
                    ]
                  )
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15 ),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Explore", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 25,
                    ),
                    ExploreCart(image: "assets/images/smartphone.png", title: "Smartphones", isActive: true),
                    ExploreCart(image: "assets/images/clothes.png", title: "Clothes", isActive: true),
                     ExploreCart(image: "assets/images/autoparts.jpg", title: "Auto Parts", isActive: true),
                      ExploreCart(image: "assets/images/jewerly.jpg", title: "Jewerly", isActive: true),
                     
                  ],
                ),),
                 
                
                
              Container(
                  padding: EdgeInsets.all(5),
                  height: 450,
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    
                    
                  ),
                  child: Image.network('https://cdn.optinmonster.com/wp-content/uploads/2019/10/men-vs-women-copy.png'),
                ),
              TextButton(onPressed: () {}, child: Text('About us', style: TextStyle(backgroundColor: Colors.black),)),
              TextButton.icon( icon: Icon(Icons.more), label: Text('More'), onPressed: () {},),
              
                
            ],
            
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                
                accountName: Text("Arbilon Amzai"),
               accountEmail: Text("arbilonamzai@gmail.com"),
               currentAccountPicture: CircleAvatar(
                 backgroundColor: Colors.black,
                 child: Text("AA"),
               ),
              ),
               ListTile(
                 leading: Icon(Icons.home_rounded),
                 title: Text("Home"),
                 onTap: () {},
                ),
                ListTile(
                 leading: Icon(Icons.adjust),
                 title: Text("Watching"),
                 subtitle: Text("1 item"),
                 onTap: () {},
                ),
                 ListTile(
                 leading: Icon(Icons.saved_search),
                 title: Text("Saved"),
                 subtitle: Text("5 items saved"),
                 onTap: () {},
                ),
                 ListTile(
                 leading: Icon(Icons.backpack_rounded),
                 title: Text("Purchases"),
                 onTap: () {},
                ),
                 ListTile(
                 leading: Icon(Icons.payments),
                 title: Text("Payments"),
                 onTap: () {},
                ),
                 ListTile(
                 leading: Icon(Icons.settings),
                 title: Text("Settings"),
                 onTap: () {},
                ),
                 ListTile(
                 leading: Icon(Icons.help_center),
                 title: Text("Help"),
                 onTap: () {},
                )
            ],
          ),
        ),
        

      ),
    
    );
    
  }
}
