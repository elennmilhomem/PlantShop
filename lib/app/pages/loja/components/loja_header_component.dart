import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LojaHeaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Vamos Começar\n a Plantar Hoje Mesmo!",
          textAlign: TextAlign.start,
          style: GoogleFonts.poppins(
            color: Color(0xFF01600f),
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFe9f6ed),
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
              color: Color(0xFF01600f),
            ),
          ),
        ),
      ],
    );
  }
}
