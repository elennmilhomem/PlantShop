import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/app/pages/home/home_page.dart';

class ApresentacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1da953),
      body: Column(
        children: [
          SizedBox(
            height: 80.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Plantas São Nossas\n Melhores Antiguidades Benéficas",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Expanded(
            child: Image.asset(
              "images/imagemhome.png",
              fit: BoxFit.contain,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 95.0,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  height: 35.0,
                  child: Center(
                    child: Text(
                      "Começar",
                      style: GoogleFonts.poppins(
                        color: Color(0xFF01600f),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
