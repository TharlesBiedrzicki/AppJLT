import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void listagemServico() {
  runApp(MaterialApp(
    home: ListagemServico(),
  ));}


class ListagemServico extends StatefulWidget {
  @override
  _ListagemServicoState createState() => _ListagemServicoState();
}

class _ListagemServicoState extends State<ListagemServico> {

  @override
  void initState() {
    super.initState();
    listarTodosServicos();
    WidgetsBinding.instance.addPostFrameCallback((_) async {

    });
  }

  void listarTodosServicos() {
    Text("Serviços", style: TextStyle(fontSize: 25));
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: barraInferior(),
      appBar: AppBar(
        title: Text("Serviços"),
          actions: <Widget>[


    ])

    );
  }

  Widget body() {
    return ListView.builder(
        padding: EdgeInsets.all(15.0),


        );
  }

  Widget barraInferior() {
    return BottomAppBar(
        color: Colors.blue,
        child: FlatButton(
          textColor: Colors.white,
          child: Text("Novo", style: TextStyle(fontSize: 25)),
          onPressed: () {
          },
        ));
  }


  }