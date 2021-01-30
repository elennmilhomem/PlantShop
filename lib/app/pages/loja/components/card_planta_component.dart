import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/app/models/produto_model.dart';
import 'package:plant_shop/app/pages/produto/produto_page.dart';
import 'package:plant_shop/app/providers/sacola_provider.dart';
import 'package:provider/provider.dart';

class CardPlantaComponent extends StatelessWidget {
  final ProdutoModel produto;

  const CardPlantaComponent({Key key, @required this.produto})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    SacolaProvider _sacolaProvider = Provider.of<SacolaProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProdutoPage(produto: produto),
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFe9f6ed),
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(10, 10),
              topRight: Radius.elliptical(10, 10),
              bottomLeft: Radius.elliptical(10, 10),
              bottomRight: Radius.elliptical(10, 10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(3, 3),
              ),
            ],
          ),
          width: 250.0,
          child: Column(
            children: [
              Image.asset(
                produto.urlImg,
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              SizedBox(
                width: 200.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          produto.nome,
                          style: GoogleFonts.poppins(
                            color: Color(0xFF01600f),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "R\$ ${produto.preco}",
                          style: GoogleFonts.poppins(
                            color: Color(0xFF1da953),
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF01600f),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: IconButton(
                        onPressed: () {
                          _sacolaProvider.adicionarProduto(produto);
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
