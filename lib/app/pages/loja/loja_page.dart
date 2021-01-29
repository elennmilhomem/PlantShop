import 'package:flutter/material.dart';
import 'package:plant_shop/app/models/produto_model.dart';
import 'package:plant_shop/app/pages/loja/components/barra_pesquisa_component.dart';
import 'package:plant_shop/app/pages/loja/components/card_planta_component.dart';
import 'package:plant_shop/app/pages/loja/components/categorias_component.dart';
import 'package:plant_shop/app/pages/loja/components/loja_header_component.dart';
import 'package:plant_shop/app/providers/loja_provider.dart';
import 'package:provider/provider.dart';

class LojaPage extends StatefulWidget {
  @override
  _LojaPageState createState() => _LojaPageState();
}

class _LojaPageState extends State<LojaPage> {
  @override
  Widget build(BuildContext context) {
    //Chama a referencia de loja provider
    LojaProvider _lojaProvider = Provider.of<LojaProvider>(context);
    //Uma variável do tipo listaProduto model recebe a lista de produtos da lojaProvider
    List<ProdutoModel> _listaProdutos = _lojaProvider.listaProdutos;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xFF1da953),
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Color(0xFF1da953),
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Color(0xFF1da953),
            ),
            title: Text(""),
          ),
        ],
      ),
      body: Column(
        children: [
          LojaHeaderComponent(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BarraPesquisaComponent(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7.0, right: 7.0, top: 30.0, bottom: 10.0),
            child: CategoriasComponent(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.5,
                maxHeight: MediaQuery.of(context).size.height * 0.5,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _listaProdutos.length,
                itemBuilder: (context, index) {
                  return CardPlantaComponent(
                    produto: _listaProdutos[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
