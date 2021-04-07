import 'package:flutter/material.dart';
import 'package:tinderflutterchallenge/src/homepage.dart';

main () => runApp(MaterialApp(
  routes: {
    '/': (ctx) => HomePage() 
  },
  initialRoute: '/',
));
