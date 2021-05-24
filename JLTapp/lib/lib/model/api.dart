import 'package:app_jlt/model/Produto.dart';
import 'package:app_jlt/model/Usuario.dart';
import 'persistencia.dart';

class API {
  Produto produto;
  Usuario usuario;
  PersistenciaAPI persistencia;

  API() {
    produto = Produto();
    usuario = Usuario();
    persistencia = PersistenciaAPI();

  }


}
