import 'package:flutter/material.dart';

class TransferirSaldo extends StatefulWidget {
  @override
  _TransferirSaldoState createState() => _TransferirSaldoState();
}

class _TransferirSaldoState extends State<TransferirSaldo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transferir saldo'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Valor', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    icon: Icon(Icons.forward),
                    label: Text('TRANSFERIR')),
              ],
            ),
          ),
        ));
  }
}
