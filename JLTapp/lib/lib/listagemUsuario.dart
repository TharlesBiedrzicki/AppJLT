import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void listagemUsuario() {
  runApp(MaterialApp(
    home: ListagemUsuario(),
  ));}
class ListagemUsuario extends StatefulWidget {
  @override
  _ListagemUsuarioState createState() => _ListagemUsuarioState();
}
class _ListagemUsuarioState extends State<ListagemUsuario> {
  @override
  void initState() {
    super.initState();
    listarTodosUsuarios();
    WidgetsBinding.instance.addPostFrameCallback((_) async {

    });
  }

  void listarTodosUsuarios() {
    Text("Usuario", style: TextStyle(fontSize: 25));
  }



@override
Widget build(BuildContext context) {
  return Scaffold(
      bottomNavigationBar: barraInferior(),
      appBar: AppBar(
          title: Text("Usuários"),
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
