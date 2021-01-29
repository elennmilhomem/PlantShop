import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/app/models/produto_model.dart';

class CategoriasComponent extends StatelessWidget {
  final ProdutoModel produto;

  const CategoriasComponent({Key key, this.produto}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 15.0,
        maxHeight: 20.0,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.all(14.0),
          ),
          Text(
            "Tudo",
            style:
                GoogleFonts.poppins(color: Color(0xFF1da953), fontSize: 18.0),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Text(
            "Interna",
            style:
                GoogleFonts.poppins(color: Color(0xFF94ac97), fontSize: 15.0),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Text(
            "Externa",
            style:
                GoogleFonts.poppins(color: Color(0xFF94ac97), fontSize: 15.0),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Text(
            "Jardim",
            style:
                GoogleFonts.poppins(color: Color(0xFF94ac97), fontSize: 15.0),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Text(
            "Fruto",
            style:
                GoogleFonts.poppins(color: Color(0xFF94ac97), fontSize: 15.0),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Text(
            "Semente",
            style:
                GoogleFonts.poppins(color: Color(0xFF94ac97), fontSize: 15.0),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Text(
            "Decoração",
            style:
                GoogleFonts.poppins(color: Color(0xFF94ac97), fontSize: 15.0),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Text(
            "Vasculares",
            style:
                GoogleFonts.poppins(color: Color(0xFF94ac97), fontSize: 15.0),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Text(
            "Orquídeas",
            style:
                GoogleFonts.poppins(color: Color(0xFF94ac97), fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}
