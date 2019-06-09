import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class TransferirSaldo extends StatefulWidget {
  @override
  _TransferirSaldoState createState() => _TransferirSaldoState();
}

class _TransferirSaldoState extends State<TransferirSaldo> {
  var controller = new MoneyMaskedTextController(decimalSeparator: ',', leftSymbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transferir saldo'),
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
                    icon: Icon(Icons.forward),
                    label: Text('TRANSFERIR')),
              ],
            ),
          ),
        ));
  }
}
