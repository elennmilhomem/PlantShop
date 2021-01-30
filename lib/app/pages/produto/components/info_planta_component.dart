import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/app/models/produto_model.dart';
import 'package:plant_shop/app/providers/favoritos_provider.dart';
import 'package:provider/provider.dart';

class InfoPlantaComponent extends StatelessWidget {
  final ProdutoModel produto;

  InfoPlantaComponent({Key key, @required this.produto}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FavoritosProvider _favoritosProvider =
        Provider.of<FavoritosProvider>(context);
    //TODO: Chamar referência dos providers
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF1da953),
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(20, 20),
            topRight: Radius.elliptical(20, 20),
            bottomLeft: Radius.elliptical(20, 20),
            bottomRight: Radius.elliptical(20, 20),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.7,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.05),
            ),
            //Título, Categoria, Preço
            headerInfo(),
            listaInfo(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                produto.descricao,
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 18.0),
              ),
            ),
            botoes(_favoritosProvider),
          ],
        ),
      ),
    );
  }

  Padding headerInfo() {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                produto.nome,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              Text(
                produto.tipo,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Text(
            "R\$ ${produto.preco}",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0),
          ),
        ],
      ),
    );
  }

  Widget listaInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            alignment: Alignment.centerRight,
            height: 30.0,
            width: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(10, 10),
                topRight: Radius.elliptical(10, 10),
                bottomLeft: Radius.elliptical(10, 10),
                bottomRight: Radius.elliptical(10, 10),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.wb_sunny_outlined,
                    color: Color(0xFF94ac97),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(
                    produto.clima,
                    style: GoogleFonts.poppins(color: Color(0xFF1da953)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.centerRight,
            height: 30.0,
            width: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(10, 10),
                topRight: Radius.elliptical(10, 10),
                bottomLeft: Radius.elliptical(10, 10),
                bottomRight: Radius.elliptical(10, 10),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.device_thermostat,
                  color: Color(0xFF94ac97),
                ),
                Text(
                  produto.temperatura,
                  style: GoogleFonts.poppins(color: Color(0xFF1da953)),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.centerRight,
            height: 30.0,
            width: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(10, 10),
                topRight: Radius.elliptical(10, 10),
                bottomLeft: Radius.elliptical(10, 10),
                bottomRight: Radius.elliptical(10, 10),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.waves,
                    color: Color(0xFF94ac97),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    produto.periodoIrrigacao,
                    style: GoogleFonts.poppins(
                      color: Color(0xFF1da953),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget botoes(FavoritosProvider _favoritosProvider) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(20, 20),
                topRight: Radius.elliptical(5, 5),
                bottomLeft: Radius.elliptical(5, 5),
                bottomRight: Radius.elliptical(20, 20),
              ),
            ),
            height: 40.0,
            width: 100.0,
            // color: Colors.white,
            child: Icon(
              Icons.favorite,
              color: Color(0xFF1da953),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(20, 20),
                topRight: Radius.elliptical(5, 5),
                bottomLeft: Radius.elliptical(5, 5),
                bottomRight: Radius.elliptical(20, 20),
              ),
            ),
            alignment: Alignment.center,
            height: 40.0,
            width: 190.0,
            child: Text(
              "Adicionar ao Carrinho",
              style: GoogleFonts.poppins(
                color: Color(0xFF1da953),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
