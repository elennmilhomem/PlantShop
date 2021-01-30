import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritosHeaderComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Todas as Plantas Que Você Amou\n Em Um Só Lugar!",
            style: GoogleFonts.poppins(
              color: Color(0xFF01600f),
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}