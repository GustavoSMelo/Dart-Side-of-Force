import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  
  Widget _body () {
    return (
      Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              child: Image.asset('assets/img/photoicon.png')
            ),
            Padding(
              padding: EdgeInsets.all(8.0), 
              child: Text('Location Changer', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
              ))
            ),
            Padding(
              padding: EdgeInsets.all(8.0), 
              child: Text('Plugin app for tinder', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              )) 
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.black
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Login with Facebook', 
                  style: TextStyle(
                    color: Colors.red[300],
                  ),),
                ),
              ),
            )
          ],
        )
      )
    );
  }

  @override
  Widget build(BuildContext ctx) {
    return (
      Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.red[300],
              width: double.infinity,
              height: double.infinity,
            ),
            _body(),
          ],
        )
      )
    );
  }
}