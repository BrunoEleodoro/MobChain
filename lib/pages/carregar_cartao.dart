import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class CarregarCartao extends StatefulWidget {
  @override
  _CarregarCartaoState createState() => _CarregarCartaoState();
}

class _CarregarCartaoState extends State<CarregarCartao> {
  var controller =
      new MoneyMaskedTextController(decimalSeparator: ',', leftSymbol: 'R\$');

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
      Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              width: double.maxFinite,
              child: Text(
                'Quanto você quer transferir?',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
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
            Container(
              width: double.maxFinite,
              child: Text(
                'Total indisponível: R\$ 54,20',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
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
      Padding(
        padding: const EdgeInsets.only(top: 310.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                'Formas de pagamento',
                style: TextStyle(color: Colors.black45, fontSize: 14),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 300,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Container(
                            height: 40,
                            child: Icon(Icons.credit_card, size: 40,),
                          ),
                        ),
                        SizedBox(height:50),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Nubank',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black45),
                              ),
                              Text(
                                'Cartão final 0000',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 300,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 40,
                          child: Image.asset(
                            'assets/plus.png',
                            color: Color(0XFFFA6423),
                          ),
                        ),
                        Text(
                          'Adicionar cartão de crédito',
                          style:
                              TextStyle(fontSize: 14, color: Color(0XFFFA6423)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
//                margin: EdgeInsets.only(bottom: 100),
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0XFF15CCEA),
                        Color(0XFF65D7A0),
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: Center(
                        child: Text(
                      'Carregar bilhete',
                      style: TextStyle(color: Colors.white),
                    )),
                  )),
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
    ])));
  }
}
