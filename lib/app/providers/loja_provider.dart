import 'package:flutter/cupertino.dart';
import 'package:plant_shop/app/models/produto_model.dart';

class LojaProvider extends ChangeNotifier {
  
  List<ProdutoModel> _listaProdutos = [
    ProdutoModel(urlImg: "images/samambaia.jpg", periodoIrrigacao: "7 Dias", preco: 60.00, temperatura: "20 graus", tipo: "Iterna", nome: "Samambaia"),
    ProdutoModel(urlImg: "images/dracaena.png", periodoIrrigacao: "7 Dias", preco: 75.00, temperatura: "20 graus", tipo: "Iterna", nome: "Dracaena"),
    ProdutoModel(urlImg: "images/eucalipto.png", periodoIrrigacao: "7 Dias", preco: 250.00, temperatura: "20 graus", tipo: "Iterna", nome: "Eucalipto"),
    ProdutoModel(urlImg: "images/pinheiro.png", periodoIrrigacao: "7 Dias", preco: 180.00, temperatura: "20 graus", tipo: "Iterna", nome: "Pinheiro"),
    ProdutoModel(urlImg: "images/irisazul.png", periodoIrrigacao: "7 Dias", preco: 300.00, temperatura: "20 graus", tipo: "Iterna", nome: "Íris Azul"),
  ];

  List<ProdutoModel> get listaProdutos => _listaProdutos;




}