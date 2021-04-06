import 'package:flutter/material.dart';

class PageTwoState extends State {
  Widget build (BuildContext ctx) {
    return (
      Scaffold(
        appBar: AppBar(
          title: Text('Network Image', textDirection: TextDirection.ltr)
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: (
            Image.asset('assets/img/photo.png')
          ),
        )
      )
    );
  }
}