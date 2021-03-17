

import 'package:flutter/material.dart';

main () {
  runApp(RememberWidget(title: 'Gustavo Santos Melo'));  
}

class RememberWidget extends StatelessWidget {

  final String title;

  const RememberWidget({ Key key, this.title }): super(key: key);

  Widget build (BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Center(
          child: Text('MaterialApp', textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white),),
        ),
      ),
      theme: ThemeData.light(),
    );
  }

}
