import 'dart:collection';
import 'dart:io';
import 'dart:convert';
import 'package:app_jlt/model/Produto.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;

const requisicaoLocal =
    "http://10.0.2.2:1515/";

 class PersistenciaAPI {

   List produtos = [];

  //Requisição GET
   Future<Map> carregarProdutos() async {
     Map<String, String> headers = HashMap();
     headers ["Authorization"] =
     'Basic \$2y\$10\$54uCli6bb28Y3BtlLTzeb.Seg6JPiKneoDpjbaxZa.xCo/vFtwkTW';

     print("Fazendo requisição GET");

     http.Response resposta = await http.get(
         "$requisicaoLocal/produtos",
         headers: headers
     );

     print("Resposta do GET da API ${resposta.body}");

     if (resposta.statusCode == 200 || resposta.statusCode == 204) {
       produtos = json.decode(resposta.body);
       return json.decode(resposta.body);
     }
     return null;
   }
 }
