import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class CarregarCartao extends StatefulWidget {
  @override
  _CarregarCartaoState createState() => _CarregarCartaoState();
}

class _CarregarCartaoState extends State<CarregarCartao> {
  var controller = new MoneyMaskedTextController(decimalSeparator: ',', leftSymbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Carregar cartao'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: controller,
                  style: TextStyle(fontSize: 30),
                  decoration: InputDecoration(

                      labelText: 'Valor', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton.icon(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
                    },
                    icon: Icon(Icons.payment),
                    label: Text('CARREGAR')),
              ],
            ),
          ),
        ));
  }
}
