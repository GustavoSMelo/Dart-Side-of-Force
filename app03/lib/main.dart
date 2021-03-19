
import 'package:app03/classes/homepage.dart';
import 'package:flutter/material.dart';

main () {
  runApp(ShowPage());
}

class ShowPage extends StatelessWidget {

  Widget build (BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.dark(),
    );
  }

}
