import 'package:app06/src/homepage.dart';
import 'package:flutter/material.dart';

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700], 
        title: Text('Columns', textDirection: TextDirection.ltr,),
      ),
      body: Container (
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('I am a widget', textDirection: TextDirection.ltr, style: TextStyle(fontSize: 26)),
            
            Text('I am another widget', textDirection: TextDirection.ltr, style: TextStyle(fontSize: 26)),

            Container(
              height: 50,
            ),

            Row(
              children: [
                Text('Item 01', textDirection: TextDirection.ltr, style: TextStyle(fontSize: 18, color: Colors.orange[700])),
            
                Text('Item 02', textDirection: TextDirection.ltr, style: TextStyle(fontSize: 18, color: Colors.orange[700])),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              verticalDirection: VerticalDirection.down,
            )
          ],
        ),
      )
    );
  }

}
