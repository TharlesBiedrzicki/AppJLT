import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';
import 'package:app_jlt/model/persistencia.dart';


class ListagemProdutoAPI extends StatefulWidget {
  @override
  _ListagemProdutoAPIState createState() => _ListagemProdutoAPIState();
}

class _ListagemProdutoAPIState extends State<ListagemProdutoAPI> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JLT Informatica"),
      ),
      bottomNavigationBar: barraInferior(),
      body: FutureBuilder(
          future: PersistenciaAPI().carregarProdutos(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                  itemCount: api.persistencia.produtos.length,
                  itemBuilder: (context, index) {
                    return construirItemLista(context, index);
                  });
            }
            return Container();
          }),
    );
  }

  Widget construirItemLista(context, index) {
    return ListTile(
      leading: RaisedButton(
        child: Text("Carregar"),
        onPressed: () {},
      ),
      title: Text(api.persistencia.produtos[index]["nome"]),
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

