import 'package:flutter/material.dart';
import 'package:plant_shop/app/pages/favoritos/favoritos_page.dart';
import 'package:plant_shop/app/pages/loja/loja_page.dart';
import 'package:plant_shop/app/pages/sacola/sacola_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          labelColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_outlined,
                color: Color(0xFF1da953),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Color(0xFF1da953),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xFF1da953),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            LojaPage(),
            FavoritosPage(),
            SacolaPage(),
          ],
        ),
      ),
    );
  }
}
