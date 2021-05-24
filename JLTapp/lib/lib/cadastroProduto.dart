import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void cadastroProduto() {
  runApp(MaterialApp(
    home: CadastroProduto(),

  ));}




class CadastroProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(

        child: Scaffold(
            appBar: AppBar(
              title: Text("Cadstro de produtos"),
            ),
            bottomNavigationBar: barraInferior(),
            body: SingleChildScrollView(
                padding: EdgeInsets.all(15),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Insira os dados do produto nos campos abaixo:",style: TextStyle(fontSize: 17),overflow: TextOverflow.ellipsis),
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
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Cor",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Valor",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Descrição",
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

