import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  Widget _body () {
    return (
      Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Form', textDirection: TextDirection.ltr, style: TextStyle(
              fontSize: 32,
            ),),
            Card(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      fillColor: Colors.indigo
                    )
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login', textDirection: TextDirection.ltr),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple[400],
                onPrimary: Colors.deepPurple[300],
                textStyle: TextStyle(
                  color: Colors.white
                )
              ),
            )
          ],
        )
      )
    );
  }

  Widget build (BuildContext ctx) {
    return (
      Scaffold(
        appBar: AppBar(
          title: Text('Stack', textDirection: TextDirection.ltr),
          backgroundColor: Colors.deepPurple[300],
        ),
        drawer: Drawer(
          child: (
            Column(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: ClipRRect(
                    child: Image.network('https://cdn.pixabay.com/photo/2012/04/26/19/43/profile-42914_960_720.png'),
                    borderRadius: BorderRadius.circular(40), 
                  ),
                  accountName: Text('Gustavo Santos Melo'), 
                  accountEmail: Text('gsantos15569@gmail.com'),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[200]
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home '),
                )
              ],
            )
          ),
        ),
        body: Stack(children: [
          Container(
            width: MediaQuery.of(ctx).size.width,
            height: MediaQuery.of(ctx).size.height,
            child: Image.asset('assets/img/background.png', fit: BoxFit.fitHeight)),
          _body(),
        ]) 
      )
    ); 
  }

}