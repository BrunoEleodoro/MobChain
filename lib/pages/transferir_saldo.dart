import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class TransferirSaldo extends StatefulWidget {
  @override
  _TransferirSaldoState createState() => _TransferirSaldoState();
}

class _TransferirSaldoState extends State<TransferirSaldo> {
  var controller =
      new MoneyMaskedTextController(decimalSeparator: ',', leftSymbol: 'R\$ ');

  var mockData = [
    {'id': 'acbe23241bccd', 'nome': 'Bruno Roza', 'saldo': 'R\$ 45,00'},
    {'id': 'acbe23241bccd', 'nome': 'Lívia Chauar', 'saldo': 'R\$ 145,00'},
    {'id': 'acbe23241bccd', 'nome': 'Adriano carlos', 'saldo': 'R\$ 5,00'},
    {'id': 'acbe23241bccd', 'nome': 'Steven', 'saldo': 'R\$ 50,00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
      Container(
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.3, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Color(0XFF15CCEA),
                Color(0XFF65D7A0),
              ],
            ),
          )),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Quanto você quer transferir?',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.maxFinite,
                child: TextFormField(
                  controller: controller,
                  style: TextStyle(fontSize: 40, color: Colors.white),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Total indisponível: R\$ 54,20',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
//            RaisedButton.icon(
//                onPressed: () {
//                  Navigator.of(context).pushNamedAndRemoveUntil(
//                      '/home', (Route<dynamic> route) => false);
//                },
//                icon: Icon(Icons.forward),
//                label: Text('TRANSFERIR')),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 310.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.maxFinite,
              child: Text(
                'Para quem você quer transferir?',
                style: TextStyle(color: Colors.black45, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Text(
                'Contatos recentes',
                style: TextStyle(color: Colors.black45, fontSize: 14),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 22.0, bottom: 22),
                child: Container(
                  height: 180,
                  margin: EdgeInsets.only(bottom: 30),
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: mockData.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(2),
                          width: 180,
                          height: 120,

                          child: Card(
                            elevation: 5,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(
                                    radius:35,
                                    backgroundColor: Theme.of(context).colorScheme.primary,
                                    child: Text(mockData[index]['nome'][0]
                                        .toUpperCase(), style: TextStyle(fontSize: 25, color: Colors.white),),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(mockData[index]['nome'], style: TextStyle(fontSize: 14, color: Color(0XFFFA6423)),),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ))
//            RaisedButton.icon(
//                onPressed: () {
//                  Navigator.of(context).pushNamedAndRemoveUntil(
//                      '/home', (Route<dynamic> route) => false);
//                },
//                icon: Icon(Icons.forward),
//                label: Text('TRANSFERIR')),
          ],
        ),
      ),
    ])));
  }
}
