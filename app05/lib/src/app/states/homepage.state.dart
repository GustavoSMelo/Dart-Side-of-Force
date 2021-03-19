import 'package:app05/src/app/controllers/appcontroller.dart';
import 'package:app05/src/homepage.dart';
import 'package:flutter/material.dart';

class HomePageState extends State<HomePage> {

  Widget build(BuildContext context) {
    return AnimatedBuilder(builder: (context, child) {
      return MaterialApp(
      home: 
      Scaffold(
        appBar: AppBar( title: Text('working with states', textDirection: TextDirection.ltr,), backgroundColor: Colors.deepPurple[600] ),
        body: Center(
          child: Switch(
            value: AppController.instance.isDarkTheme,
            onChanged: (value) {            
              AppController.instance.changeTheme();
            },
          ),
        ),
      ),
      theme: ThemeData(
        brightness: AppController.instance.isDarkTheme 
      ? Brightness.dark
      : Brightness.light ),
    );
    }, animation: AppController.instance,);
  }
}
