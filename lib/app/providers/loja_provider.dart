import 'package:flutter/cupertino.dart';
import 'package:plant_shop/app/models/produto_model.dart';

class LojaProvider extends ChangeNotifier {
  
  List<ProdutoModel> _listaProdutos = [
    ProdutoModel(urlImg: "images/samambaia.jpg", periodoIrrigacao: "7 Dias", preco: 60.00, temperatura: "+18-23 °C", tipo: "Decoração", nome: "Samambaia",clima: "Neutro", descricao: "Para cuidar de uma samambaia, primeiramente pense sempre em um solo úmido. Nunca a deixe exposta em sol forte ou a ventanias. O melhor para essa planta é um ambiente com luz natural – ou seja, um bom lugar para ela é pertinho de uma janela."),
    ProdutoModel(urlImg: "images/dracaena.png", periodoIrrigacao: "7 Dias", preco: 75.00, temperatura: "20 graus", tipo: "Iterna", nome: "Dracaena", clima: "Precisa de Sol", descricao: ""),
    ProdutoModel(urlImg: "images/eucalipto.png", periodoIrrigacao: "7 Dias", preco: 250.00, temperatura: "20 graus", tipo: "Externa", nome: "Eucalipto",clima: "Precisa de Sol", descricao: ""),
    ProdutoModel(urlImg: "images/pinheiro.png", periodoIrrigacao: "7 Dias", preco: 180.00, temperatura: "20 graus", tipo: "Externa", nome: "Pinheiro",clima: "Precisa de Sol", descricao: ""),
    ProdutoModel(urlImg: "images/irisazul.png", periodoIrrigacao: "7 Dias", preco: 300.00, temperatura: "20 graus", tipo: "Orquídeas", nome: "Íris Azul",clima: "Precisa de Sol", descricao:"" ),
  ];

  List<ProdutoModel> get listaProdutos => _listaProdutos;




}