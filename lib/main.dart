import 'package:flutter/material.dart';
import 'package:plant_shop/app/pages/apresentacao/apresentacao_page.dart';
import 'package:plant_shop/app/providers/favoritos_provider.dart';
import 'package:plant_shop/app/providers/loja_provider.dart';
import 'package:plant_shop/app/providers/sacola_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FavoritosProvider()),
        ChangeNotifierProvider(create: (context) => LojaProvider()),
        ChangeNotifierProvider(create: (context) => SacolaProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ApresentacaoPage(),
    );
  }
}
