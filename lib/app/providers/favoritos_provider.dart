import 'package:flutter/cupertino.dart';
import 'package:plant_shop/app/models/produto_model.dart';

class FavoritosProvider extends ChangeNotifier {
  
  List<ProdutoModel> _listaFavoritos = [];

  List<ProdutoModel> get listaFavoritos => _listaFavoritos;

  void removerFavorito(ProdutoModel produto){
      _listaFavoritos.remove(produto);
      notifyListeners();
  }

  void adicionarFavorito(ProdutoModel produto){
    _listaFavoritos.add(produto);
    notifyListeners();
  }



}
