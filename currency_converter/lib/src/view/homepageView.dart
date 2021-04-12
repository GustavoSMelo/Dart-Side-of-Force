import 'package:currency_converter/src/model/homepageModel.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  State<StatefulWidget> createState() => HomePage();
}

class HomePage extends State {

  var model = new HomePageModel('Real', 'Dolar', 0.0, 0.0);
  List listCurrency = ['Dolar', 'Euro', 'Real'];
  var dropDownCurrencyValue = 'Real';
  var dropDownConvertedValue = 'Dolar'; 

  @override
  Widget build (BuildContext ctx) {
    return (
      Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.grey[900],
              width: double.infinity,
              height: double.infinity
            ),
            _body()
          ],
        ),
      )
    ); 
  }

  Widget _body() {
    return (
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding (
          padding: EdgeInsets.all(20),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/img/calculadora_dolar.png'),
              ),
              SizedBox(
                child: Row (
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15
                      ),
                      child: Expanded(
                        flex: 1,
                        child: DropdownButton(
                          items: listCurrency.map<DropdownMenuItem<String>>((items) => DropdownMenuItem<String>(child: Text(items), value: items)).toList(), 
                          underline: Container(
                            height: 2,
                            color: Colors.orange[600],
                          ),
                          onChanged: (value) {
                            setState(() {
                              dropDownCurrencyValue = value;
                            });
                          },
                          value: dropDownCurrencyValue,
                          style: TextStyle(
                            color: Colors.orange[600]
                          ),
                        )
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 9),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange[600]
                              )
                            ),
                            border: UnderlineInputBorder(),
                            labelText: 'Valor para conversão',
                            labelStyle: TextStyle(
                              color: Colors.orange[600]
                            ),
                            focusColor:Colors.orange[900] 
                          ),
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      )
                    ) 
                  ]
                ),
              ),
              Row (
                children: [
                  DropdownButton(items: listCurrency.map((items) => 
                    DropdownMenuItem(child: Text(items), value: items)).toList(),
                    value: dropDownConvertedValue,
                    underline: Container(
                      height: 2,
                      color: Colors.orange[600],
                    ), 
                    style: TextStyle(
                      color: Colors.orange[600]
                    ),
                    onChanged: (value) {
                      setState() {
                        dropDownConvertedValue = value;
                      }
                    },
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    readOnly: true,
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
