import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: <Widget>[
        Container(
            height: 300,
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
        Container(
          margin: EdgeInsets.only(top: 30, left: 37),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  'Anna Flávia',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Text(
                  '173217781372',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  'Cartão 660 735 810',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
            ],
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 180, bottom: 20, left: 20, right: 20),
            width: double.maxFinite,
            height: 230,
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Text(
                        'R\$ 34,00',
                        style:
                            TextStyle(color: Color(0XFFFA6423), fontSize: 40),
                      ),
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                    child: Text(
                      'Você fez uma transferência em 09/06\nno valor de R\$ 20,00 para Anna Flávia',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    ),
                  )),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.show_chart, size: 30,color: Color(0XFFFA6423),),
                        Align(
                          alignment: Alignment.center,
                          child:Text(
                              'Ver histórico de transacões',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Color(0XFFFA6423)),
                          ),
                        ),
                        Container(child: Image.asset('assets/right-arrow.png', color: Color(0XFFFA6423),),height: 20,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Column(
          children: <Widget>[
//            Container(
//              width: double.maxFinite,
//              child: Text(
//                'U\$450,00',
//                textAlign: TextAlign.center,
//                style: TextStyle(
//                  fontSize: 30,
//                ),
//              ),
//            ),
            Padding(
              padding: const EdgeInsets.only(top: 420, left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/carregarCartao');
                      },
                      child: Container(
                          height: 150,
                          child: Card(
                            elevation: 2,
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 20,),
                                  Container(
                                    height: 70,
                                      child: Image.asset('assets/credit-card.png', color: Color(0XFFFA6423),)),
                                  SizedBox(height: 10,),
                                  Text('Carregar bilhete', style: TextStyle(color: Color(0XFFFA6423)),)
                                ],
                              )
                            ),
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/transferirSaldo');
                      },
                      child: Container(
                          height: 150,
                          child: Card(
                            elevation: 2,
                            child: Center(
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(height: 20,),
                                    Container(
                                        height: 70,
                                        child: Image.asset('assets/money-transfer.png', color: Color(0XFFFA6423),)),
                                    SizedBox(height: 10,),
                                    Text('Transferir crédito', style: TextStyle(color: Color(0XFFFA6423)),)
                                  ],
                                )
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30),
            child: Text('Reportar perda ou extravio do cartão', style: TextStyle( decoration: TextDecoration.underline,color: Color(0XFFFA6423)),),)
//            Row(
//              children: <Widget>[
//                Expanded(
//                  flex: 6,
//                  child: Text(
//                    'Transferir saldo',
//                    style: TextStyle(fontSize: 18),
//                    textAlign: TextAlign.center,
//                  ),
//                ),
//                Expanded(
//                  flex: 6,
//                  child: Text(
//                    'Realizar recarga',
//                    style: TextStyle(fontSize: 18),
//                    textAlign: TextAlign.center,
//                  ),
//                ),
//              ],
//            )
          ],
        ),
      ]),
    ));
  }
}
