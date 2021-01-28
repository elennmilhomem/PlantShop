import 'package:flutter/material.dart';
import 'package:plant_shop/app/pages/loja/components/loja_header_component.dart';

class LojaPage extends StatefulWidget {
  @override
  _LojaPageState createState() => _LojaPageState();
}

class _LojaPageState extends State<LojaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          LojaHeaderComponent(),
        ],
      ),
    );
  }
}