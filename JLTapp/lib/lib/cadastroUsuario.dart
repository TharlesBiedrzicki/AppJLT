import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void cadastroUsuario() {
  runApp(MaterialApp(
    home: CadastroUsuario(),
  ));}




class CadastroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(

        child: Scaffold(
            appBar: AppBar(
              title: Text("Cadstro de Usuários"),
            ),
            bottomNavigationBar: barraInferior(),
            body: SingleChildScrollView(
                padding: EdgeInsets.all(15),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Insira os dados do usuário nos campos abaixo:",style: TextStyle(fontSize: 17),overflow: TextOverflow.ellipsis),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Nome",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ]))));
  }


  Widget barraInferior() {
    return BottomAppBar(
        color: Colors.blue,
        child: FlatButton(
            textColor: Colors.white,
            child: Text("Salvar", style: TextStyle(fontSize: 25)),
            onPressed: () {}));
  }
}
