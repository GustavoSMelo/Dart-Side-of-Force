import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPageState extends State {

  String email = '';
  String password = '';


  Widget build (BuildContext ctx) {
    return (
      Scaffold(
        appBar: AppBar(title: 
          Text
            (
              'Login Form',
              textDirection: TextDirection.ltr
            ),
          backgroundColor: Colors.deepPurple,
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  this.email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email'
                ),
              ),
              SizedBox(height: 30),
              TextField(
                onChanged: (text) {
                  this.password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password'
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed: () {
                print('Email: $email, Password: $password');
              }, child: Text('Login', textDirection: TextDirection.ltr,),style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                onPrimary: Colors.deepPurple[400]
              ),)
            ],
          ),
        ),
      )
    );
  }

}