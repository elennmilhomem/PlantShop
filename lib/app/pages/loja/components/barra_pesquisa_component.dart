import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarraPesquisaComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40.0,
            width: 250.0,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Color(0xFF94ac97),
                  ),
                ),
                Text(
                  "Pesquisar",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    color: Color(0xFF94ac97),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFFe9f6ed),
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(10, 10),
                topRight: Radius.elliptical(10, 10),
                bottomLeft: Radius.elliptical(10, 10),
                bottomRight: Radius.elliptical(10, 10),
              ),
            ),
          ),
          Container(
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
                Icons.tune,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
