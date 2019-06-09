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
            height: 350,
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
          margin: EdgeInsets.only(top: 50, left: 37),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  'Fulano de tal',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  '173217781372',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
            ],
          ),
      ),
      Center(
          child: Container(
            margin: EdgeInsets.only(top: 220, bottom: 20, left: 20, right: 20),
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
                        'R\$ 54,20',
                        style: TextStyle(color: Color(0XFFFA6423), fontSize: 40),
                      ),
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                    child: Text(
                      'Última recarga em 07/06 no \nvalor de R\$ 52,00',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    ),
                  )),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 40.0, left: 10, right: 10),
                      child: Text(
                        'Ver histórico de recargas',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0XFFFA6423)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
      SizedBox(
          height: 40,
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
                padding: const EdgeInsets.only(top: 480,left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 6,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/listarPessoas');
                        },
                        child: Container(
                            height: 150,
                            child: Card(
                              elevation: 2,
                              child: Center(
                                child: Icon(
                                  Icons.insert_emoticon,
                                  size: 70,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            )),
                      ),
                    ),
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
                                child: Icon(
                                  Icons.insert_emoticon,
                                  size: 70,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            SizedBox(
              height: 20,
            ),
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
