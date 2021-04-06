import 'package:app09/src/pageone.dart';
import 'package:app09/src/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main () => runApp(MaterialApp(routes: {
  '/': (ctx) => PageOne(),
  '/page/two': (ctx) => PageTwo()
})); 
