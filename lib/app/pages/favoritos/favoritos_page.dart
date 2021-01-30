import 'package:flutter/material.dart';
import 'package:plant_shop/app/models/produto_model.dart';
import 'package:plant_shop/app/pages/favoritos/components/favoritos_header_components.dart';
import 'package:plant_shop/app/pages/loja/components/card_planta_component.dart';
import 'package:plant_shop/app/providers/favoritos_provider.dart';
import 'package:provider/provider.dart';

class FavoritosPage extends StatefulWidget {
  @override
  _FavoritosPageState createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  @override
  Widget build(BuildContext context) {
    FavoritosProvider _favoritosProvider = Provider.of<FavoritosProvider>(context);
    List<ProdutoModel> _listaProdutos = _favoritosProvider.listaFavoritos;
    return Container(
      child: Column(
        children: [
          FavoritosHeaderComponents(),
          Expanded( //O expanded faz com que o gridView consuma todo os espaço restante da tela
            child: GridView.count(
              crossAxisCount: 2,
              //Mapeia a lista de produtos e para cada produto é gerado um cardPlanta component (retornando para o children uma lista de widgets)
              children: _listaProdutos.map((produto) => CardPlantaComponent(produto: produto)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}