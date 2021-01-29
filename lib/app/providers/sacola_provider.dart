import 'package:flutter/cupertino.dart';
import 'package:plant_shop/app/models/produto_model.dart';

class SacolaProvider extends ChangeNotifier {
  List<ProdutoModel> _listaSacolaProdutos = [];

  List<ProdutoModel> get listaSacolaProdutos => _listaSacolaProdutos;

  void adicionarProduto(ProdutoModel produto) {
    _listaSacolaProdutos.add(produto);
    //avisa o atualizador da tela, semelhante ao setState do provider
    notifyListeners();
  }

  void removerProduto(ProdutoModel produto) {
    _listaSacolaProdutos.remove(produto);
    notifyListeners();
  }

  double calcularValorTotal() {
    double valorTotal = 0;

    _listaSacolaProdutos.forEach((produto) {
      valorTotal += produto.preco;
    });
    return valorTotal;
  }
}
