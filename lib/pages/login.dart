import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height - 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 40),
                        height: 300,
                        width: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Nome de usuário ou CPF'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(labelText: 'Senha'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Esqueci minha senha',
                                style: TextStyle(
                                  color: Color(0XFFFA6423),
                                ))
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 100),
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0XFF15CCEA),
                                Color(0XFF65D7A0),
                              ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3))),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/home');
                            },
                            child: Center(
                                child: Text(
                              'Entrar',
                              style: TextStyle(color: Colors.white),
                            )),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Não tem uma conta?',
                            style: TextStyle(color: Colors.black54),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Cadastre-se!',
                              style: TextStyle(
                                color: Color(0XFFFA6423),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
