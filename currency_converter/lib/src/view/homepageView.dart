import 'package:currency_converter/src/controller/homepageController.dart';
import 'package:currency_converter/src/model/homepageModel.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  State<StatefulWidget> createState() => HomePage();
}

class HomePage extends State {

  var model = new HomePageModel('Real', 'Dolar', 0.0, 0.0);
  List listCurrency = ['Dolar', 'Euro', 'Real'];

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
                height: 50
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
                            print('first dropdown: $value');
                            setState(() {
                              model.setCurrentCurrency(value);
                            });
                            print(model.getCurrentCurrency());
                          },
                          value: model.getCurrentCurrency(),
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
                          onChanged: (value) {
                            print('txt field 1: $value');
                            model.setCurrentCurrencyPrice(double.parse(value));
                            print(model.getCurrentCurrencyPrice().toString());
                          },
                        ),
                      )
                    ) 
                  ]
                ),
              ),
              Row (
                children: [
                  Padding (
                    padding: EdgeInsets.symmetric(
                      horizontal: 15
                    ),
                    child: Expanded(
                      flex: 1,
                      child: DropdownButton(items: listCurrency.map((items) => 
                        DropdownMenuItem(child: Text(items), value: items)).toList(),
                        value: model.getConverterCurrency(),
                        underline: Container(
                          height: 2,
                          color: Colors.orange[600],
                        ), 
                        style: TextStyle(
                          color: Colors.orange[600]
                        ),
                        onChanged: (value) {
                          print('dropdown 2: $value');
                          setState(() {
                            model.setConverterCurrency(value);
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding (
                      padding: EdgeInsets.only(
                        bottom: 30
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        readOnly: true,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.orange[600]
                            ) 
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.orange[600]
                            )
                          ),
                          labelText: model.getConverterCurrencyPrice().toString(),
                          labelStyle: TextStyle(
                            color: Colors.orange[600]
                          )
                        ),
                        style: TextStyle(
                          color: Colors.orange[600]
                        ),
                      ),
                    ) ,
                  )
                ],
              ),
              ElevatedButton(onPressed: () {
                var controller = HomePageController();
                
                var result = controller.convert(
                model.getCurrentCurrency(),
                model.getConverterCurrency(), 
                model.getCurrentCurrencyPrice());

                setState(() {
                  model.setConverterCurrencyPrice(result);
                });

                print(result);
              }, 
              child: Text('Calcular'), 
              style: ElevatedButton.styleFrom(
                primary: Colors.orange[600],
                onPrimary: Colors.orange[200]
              ))
            ],
          ),
        ),
      )
    );
  }
}
