import 'package:flutter/material.dart';
import 'package:plant_shop/app/models/produto_model.dart';
import 'package:plant_shop/app/pages/produto/components/info_planta_component.dart';

class ProdutoPage extends StatefulWidget {
  final ProdutoModel produto;

  const ProdutoPage({Key key, @required this.produto}) : super(key: key);
  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xFF1da953),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0, top: 10.0),
              child: Container(
                width: 50.0,
                decoration: BoxDecoration(
                  color: Color(0xFF1da953),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(10, 10),
                    topRight: Radius.elliptical(10, 10),
                    bottomLeft: Radius.elliptical(10, 10),
                    bottomRight: Radius.elliptical(10, 10),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding:EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.3),
            child: InfoPlantaComponent(produto: widget.produto),
          ),
          Image.asset(
            widget.produto.urlImg,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
        ],
      ),
    );
  }
}
