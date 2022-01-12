import 'dart:io';

import 'package:flutter/material.dart';

class ExploreCart extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;

  const ExploreCart ({Key? key, required this.image, required this.title, required this.isActive})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      color: Colors.white10,
      boxShadow: [
        isActive ?
        BoxShadow(
          offset: Offset(10, 0),
          blurRadius: 23,
          color: Colors.black26,
          
        )
       : BoxShadow(
         offset: Offset(5, 0), blurRadius: 8, color: Colors.black26
       )

      ]

      ),
      child: Column(
        children: [
        Image.asset(image, height: 100),
          Text(title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
      

    );
    
  } 
  
}

