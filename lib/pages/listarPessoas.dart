import 'package:flutter/material.dart';

class ListarPessoasPage extends StatefulWidget {
  @override
  _ListarPessoasPageState createState() => _ListarPessoasPageState();
}

class _ListarPessoasPageState extends State<ListarPessoasPage> {
  var arrayPessoas = [
    {'nome': 'Bruno Eleodoro', 'saldo': 'R\$200,00'},
    {'nome': 'Aline', 'saldo': 'R\$20,00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listar Pessoas'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                ListView.builder(
                  itemCount: arrayPessoas.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: (){

                        },
                        leading: CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        title: Text(arrayPessoas[index]['nome']),
                        subtitle: Text(arrayPessoas[index]['saldo']),
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
