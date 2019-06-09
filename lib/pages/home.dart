import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.maxFinite,
                  child: Text(
                    'U\$450,00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Divider(),
                Row(
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
                              child: Center(
                                child: Icon(
                                  Icons.people_outline,
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
                              child: Center(
                                child: Icon(
                                  Icons.monetization_on,
                                  size: 70,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 6,
                      child: Text(
                        'Transferir saldo',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        'Realizar recarga',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
