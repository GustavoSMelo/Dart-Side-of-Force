import 'package:app11/src/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main () => runApp(MaterialApp(
  routes: {
    '/': (ctx) =>  LoginPage()
  }, 
  initialRoute: '/'
  )
);
