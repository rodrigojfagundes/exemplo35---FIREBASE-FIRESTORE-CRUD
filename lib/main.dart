import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

// TUTORIAL LINK
// https://www.youtube.com/watch?v=hjGt7Jav1mM
//
void main() async {
//inicializando o firebase
  WidgetsFlutterBinding.ensureInitialized();
  //aguardando o firebase resposnder
  await Firebase.initializeApp();
//apos ele responder nos podemos colocar 1 POR vez codigos dos BLOCOS
//de codigo a baixo

// # 1
//  // comando para ADD e MODIFICAR dados ao firebase
//
//  //pegando a referencia ao Firebase Firestore e chamando a classe dele la cima
//  //o .INSTANCE eu nao entendi
//FirebaseFirestore.instance
//  //CRIANDO a COLECAO PRODUTOS... colecao e tipo o BD
//    .collection("produtos")
//  // criando o DOCUMENTO (produto2) q fica dentro da COLECAO acima... e tipo uma TABELA
//    .doc("produto2")
//  // aqui nos estamos CRIANDO as "CHAVE" : "VALOR" q ficaram dentro do documento
//  //comando .SET serve para ADD e MODIFICAR
//    .set({"nome": "caderno", "preco": 8.88, "ativo": false});
//
// #2
//OBS: Usando o comando a baixo ele ADD, e cria um .DOC/DOCUMENTO
//com nome um nome ALEARTORIO/RANDOMICO
//
//  //pegando a referencia ao Firebase Firestore e chamando a classe dele la cima
//FirebaseFirestore.instance
//  //CRIANDO ou ADD os dados a colecao PRODUTOS
//      .collection("produtos")
//  //usando o comando .add para add as CHAVES e VALORES...
//  //como nao foi passado o nome do DOC, entao e criado um DOC com nome aleartorio
//      .add({"nome": "caderno", "preco": 8.88, "ativo": false});
//
//
// #3
//  //comando para ATUALIZAR/MODIFICAR apenas UM dos valores do DOC/DOCUMENTOS
//
//  //pegando a referencia ao Firebase Firestore e chamando a classe dele la cima
//  FirebaseFirestore.instance
//  //acessando a COLECAO PRODUTOS
//  .collection("produtos")
//  //e dps acessando o PRODUTO1
//  .doc("produto1")
//  //alterando APENAS o VALOR da CHAVE NOME de produto 1... com o .update
//  .update({"nome": "caneta esferografica",
//  });
//
// #4
//  //lendo o q TUDO q esta na COLECAO/BANCO DE DADOS PRODUTOS
//
//  //resultado é uma querySnapshot... ou seja resultado vai receber uma copia
//  //exata dos valores q estao nos DOC q estao dentro de PRODUTOS, atraves do .get a baixo
//  QuerySnapshot resultado =
//  //o AWAIT vai retornar os dados no futuro, dps acessamos a instancia do Firestore
//      await FirebaseFirestore.instance
//  //e damos um GET/PEGAMOS as informacoes q estao nos DOC da colecao PRODUTOS
//      .collection("produtos").get();
//
//  //consultando os valores q estao no SNAPSHOT/LISTA RESULTADOS
//  //e comecando com o INDICE/CONTADOR 0...
//  resultado.docs.forEach((indice) {
//  //para cada DOC chamado de INDICE vamos imprimir o ID/NOME do DOC e o VALOR dele
//    print(indice.id);
//    print(indice.data());
//  });
//
//#5
//alterando UM CAMPO/VALOR de TODOS os DOCUMENTOS da COLECAO/BANCO DE DADOS
//
//  //resultado é uma querySnapshot... ou seja resultado vai receber uma copia
//  //exata dos valores q estao nos DOC q estao dentro de PRODUTOS, atraves do .get a baixo
//  QuerySnapshot resultado =
//  //o AWAIT vai retornar os dados no futuro, dps acessamos a instancia do Firestore
//      await FirebaseFirestore.instance
//  //e damos um GET/PEGAMOS as informacoes q estao nos DOC da colecao PRODUTOS
//      .collection("produtos").get();
//
//percorrendo os documentos (produto1 e produto2) e buscando por
//o campo ATIVO e alterando ele de TRUE para FALSE
//  resultado.docs.forEach((indice) {
//  //pegando o documento q ta no INDICE, passando a referencia q no CASO é
//  //update/atualizar os dados, e atualizamos a CHAVE/CAMPO "ATIVO" para FALSE
//    indice.reference.update({"ativo": false});
//  });
//
//#6
//imprimindo apenas os VALORES/CAMPOS q estao no DOCUMENTO PRODUTO1
//
//  // resultado é um DocumentSnapshot q vai receber um GET/pegar o q ta no DOC
//  //PRODUTO1
//  DocumentSnapshot resultado = await FirebaseFirestore.instance
//  //acessando a colecao PRODUTOS
//      .collection("produtos")
//  //e dps acessando o DOC PRODUTO1
//      .doc("produto1")
//  //atraves do comando .GET nos copiamos o q ta em PRODUTO1 para o RESULTADO ali de cima
//      .get();
//
//  //exibindo o nome do DOC no caso PRODUTO1
//  print(resultado.id);
//  //exibindo o conteudo desse DOC
//  print(resultado.data());
//
//#7
//Deletando as informacoes q na COLECAO/BD PRODUTOS, no DOCUMENTO
//de nome PRODUTO2
//  //basicamente iniciamos o firebase e sua instancia
//  await FirebaseFirestore.instance
//  //acessando o BD/COLECAO PRODUTOS
//      .collection("produtos")
//  //em seguencia acessamos o DOC PRODUTO2
//      .doc("produto2")
//  //e nele usamos o comando delete para deletar o q ta nesse DOC
//      .delete();
//
//#8
//NOTIFICACAO quando um DOCUMENT é atualizado/valor MODIFICADO...
//  //iniciando a instancia do firebase
//  FirebaseFirestore.instance
//  //abrindo a colecao/bando de dados PRODUTOS
//      .collection("produtos")
//  //com o comando SNAPSHOT fazendo uma copia desses dados q ta dentro de PRODUTOS
//      .snapshots()
//  //o comando .LISTEN fica verificando se ouve alguma nos valores dos DOC da
//  //da COLECAO PRODUTOS, se sim, esses valores sao passados para variavel RESULTADO
//      .listen((resultado) {
//  //NAO ENTENDI MTO BEM...mas o indice é os DOC +ou- isso
//    resultado.docs.forEach((indice) {
//  //colocando para imprimir os dados de cada INDICE, ou seja de cada DOC...
//      print(indice.data());
//    });
//  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
