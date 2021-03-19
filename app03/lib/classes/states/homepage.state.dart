import 'package:flutter/material.dart';

import '../homepage.dart';

class HomePageState extends State<HomePage> {
  
  int counter = 0;

  Widget build(BuildContext context) {

    return (
      Container(
        child: Center(
          child: GestureDetector(child: Text ('Voce clickou $counter vezes', textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white)), onTap: () { 
            setState(() { 
              counter++; 
            });  
          },)
        ),
      )
    );

  }

}
